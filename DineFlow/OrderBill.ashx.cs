using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.IO;
using System.Web;
using System.Web.SessionState;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

namespace DineFlow
{
    public class OrderBillDownload : IHttpHandler, IRequiresSessionState
    {
        private const string ReportPath = "~/Reports/OrderBill.rpt";

        public bool IsReusable
        {
            get { return false; }
        }

        public void ProcessRequest(HttpContext context)
        {
            if (context.Session["DineFlow.CustomerName"] == null ||
                context.Session["DineFlow.MobileNumber"] == null)
            {
                context.Response.Redirect("Order.aspx?table=1", false);
                context.ApplicationInstance.CompleteRequest();
                return;
            }

            string orderNumber = context.Request.QueryString["order"];
            if (string.IsNullOrWhiteSpace(orderNumber))
            {
                WriteError(context, 404, "Order was not found.");
                return;
            }

            string reportFilePath = context.Server.MapPath(ReportPath);
            if (!File.Exists(reportFilePath))
            {
                WriteError(context, 503, "Bill downloads are not configured. Add Reports/OrderBill.rpt to enable them.");
                return;
            }

            DataSet orderData = LoadOrderData(context, orderNumber);
            if (orderData.Tables["OrderBill"].Rows.Count == 0)
            {
                WriteError(context, 404, "Order was not found.");
                return;
            }

            using (ReportDocument report = new ReportDocument())
            {
                report.Load(reportFilePath);
                report.SetDataSource(orderData);

                using (Stream pdf = report.ExportToStream(ExportFormatType.PortableDocFormat))
                {
                    if (pdf.CanSeek)
                    {
                        pdf.Position = 0;
                    }

                    context.Response.Clear();
                    context.Response.ContentType = "application/pdf";
                    context.Response.AddHeader("Content-Disposition", "attachment; filename=\"DineFlow-bill.pdf\"");
                    if (pdf.CanSeek)
                    {
                        context.Response.AddHeader("Content-Length", pdf.Length.ToString(CultureInfo.InvariantCulture));
                    }

                    pdf.CopyTo(context.Response.OutputStream);
                    context.Response.Flush();
                }
            }

            context.ApplicationInstance.CompleteRequest();
        }

        private static DataSet LoadOrderData(HttpContext context, string orderNumber)
        {
            DataSet orderData = new DataSet("OrderBillData");
            string connectionString = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand command = new SqlCommand(
                "SELECT o.OrderNumber, o.CustomerName, o.MobileNumber, o.TableNumber, " +
                "o.TotalAmount, o.Status, o.CreatedAt, i.ItemName, i.Quantity, " +
                "i.UnitPrice, i.LineTotal " +
                "FROM Orders o INNER JOIN OrderItems i ON o.OrderID = i.OrderID " +
                "WHERE o.OrderNumber = @OrderNumber " +
                "AND o.CustomerName = @CustomerName AND o.MobileNumber = @MobileNumber " +
                "ORDER BY i.OrderItemID", connection))
            using (SqlDataAdapter adapter = new SqlDataAdapter(command))
            {
                command.Parameters.Add("@OrderNumber", SqlDbType.VarChar, 20).Value = orderNumber;
                command.Parameters.Add("@CustomerName", SqlDbType.NVarChar, 100).Value =
                    context.Session["DineFlow.CustomerName"].ToString();
                command.Parameters.Add("@MobileNumber", SqlDbType.VarChar, 10).Value =
                    context.Session["DineFlow.MobileNumber"].ToString();

                adapter.Fill(orderData, "OrderBill");
            }

            return orderData;
        }

        private static void WriteError(HttpContext context, int statusCode, string message)
        {
            context.Response.Clear();
            context.Response.StatusCode = statusCode;
            context.Response.TrySkipIisCustomErrors = true;
            context.Response.ContentType = "text/plain";
            context.Response.Write(message);
            context.ApplicationInstance.CompleteRequest();
        }
    }
}
