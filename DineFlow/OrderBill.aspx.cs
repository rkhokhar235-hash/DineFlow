using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;

namespace DineFlow
{
    public partial class OrderBill : Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DineFlow.CustomerName"] == null ||
                Session["DineFlow.MobileNumber"] == null)
            {
                Response.Redirect("Order.aspx?table=1");
                return;
            }

            if (!IsPostBack)
            {
                DownloadBill();
            }
        }

        void DownloadBill()
        {
            string orderNumber = Request.QueryString["order"];

            if (string.IsNullOrEmpty(orderNumber))
            {
                Response.Write("Order was not found.");
                return;
            }

            con = new SqlConnection(s);
            con.Open();

            cmd = new SqlCommand(
                "SELECT o.OrderNumber, o.CustomerName, o.MobileNumber, o.TableNumber, " +
                "o.TotalAmount, o.Status, o.CreatedAt, i.ItemName, i.Quantity, " +
                "i.UnitPrice, i.LineTotal " +
                "FROM Orders o INNER JOIN OrderItems i ON o.OrderID = i.OrderID " +
                "WHERE o.OrderNumber = @OrderNumber " +
                "AND o.CustomerName = @CustomerName " +
                "AND o.MobileNumber = @MobileNumber " +
                "ORDER BY i.OrderItemID", con);
            cmd.Parameters.AddWithValue("@OrderNumber", orderNumber);
            cmd.Parameters.AddWithValue("@CustomerName", Session["DineFlow.CustomerName"].ToString());
            cmd.Parameters.AddWithValue("@MobileNumber", Session["DineFlow.MobileNumber"].ToString());

            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            con.Close();

            if (ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("Order was not found.");
                return;
            }

            DataRow firstRow = ds.Tables[0].Rows[0];
            List<string> lines = new List<string>();
            lines.Add("DINEFLOW RESTAURANT");
            lines.Add("------------------------------");
            lines.Add("ORDER BILL");
            lines.Add("Order: " + firstRow["OrderNumber"].ToString());
            lines.Add("Customer: " + firstRow["CustomerName"].ToString());
            lines.Add("Mobile: " + firstRow["MobileNumber"].ToString());
            lines.Add("Table: " + firstRow["TableNumber"].ToString());
            lines.Add("Status: " + firstRow["Status"].ToString());
            lines.Add("Date: " + Convert.ToDateTime(firstRow["CreatedAt"]).ToString("dd-MMM-yyyy hh:mm tt"));
            lines.Add("------------------------------");
            lines.Add("ITEM                         QTY       TOTAL");

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                string itemName = row["ItemName"].ToString();
                if (itemName.Length > 24)
                {
                    itemName = itemName.Substring(0, 24);
                }

                lines.Add(
                    itemName.PadRight(28) +
                    row["Quantity"].ToString().PadRight(10) +
                    "Rs. " + Convert.ToDecimal(row["LineTotal"]).ToString("0.00"));
            }

            lines.Add("------------------------------");
            lines.Add("GRAND TOTAL: Rs. " + Convert.ToDecimal(firstRow["TotalAmount"]).ToString("0.00"));
            lines.Add("");
            lines.Add("Thank you for ordering with DineFlow.");

            string pdf = MakePdf(lines);
            byte[] pdfBytes = Encoding.ASCII.GetBytes(pdf);

            Response.Clear();
            Response.ContentType = "application/pdf";
            Response.AddHeader("Content-Disposition", "attachment; filename=" + orderNumber + "-bill.pdf");
            Response.OutputStream.Write(pdfBytes, 0, pdfBytes.Length);
            Response.Flush();
            Response.End();
        }

        string MakePdf(List<string> lines)
        {
            StringBuilder content = new StringBuilder();
            content.AppendLine("BT");
            content.AppendLine("/F1 11 Tf");
            content.AppendLine("50 780 Td");

            for (int i = 0; i < lines.Count; i++)
            {
                if (i > 0)
                {
                    content.AppendLine("0 -16 Td");
                }

                content.AppendLine("(" + PdfText(lines[i]) + ") Tj");
            }

            content.AppendLine("ET");

            List<string> objects = new List<string>();
            objects.Add("<< /Type /Catalog /Pages 2 0 R >>");
            objects.Add("<< /Type /Pages /Kids [3 0 R] /Count 1 >>");
            objects.Add("<< /Type /Page /Parent 2 0 R /MediaBox [0 0 595 842] /Resources << /Font << /F1 5 0 R >> >> /Contents 4 0 R >>");
            objects.Add("<< /Length " + Encoding.ASCII.GetByteCount(content.ToString()) + " >>\nstream\n" + content + "endstream");
            objects.Add("<< /Type /Font /Subtype /Type1 /BaseFont /Courier >>");

            StringBuilder pdf = new StringBuilder();
            pdf.AppendLine("%PDF-1.4");
            List<int> positions = new List<int>();
            positions.Add(0);

            for (int i = 0; i < objects.Count; i++)
            {
                positions.Add(Encoding.ASCII.GetByteCount(pdf.ToString()));
                pdf.AppendLine((i + 1) + " 0 obj");
                pdf.AppendLine(objects[i]);
                pdf.AppendLine("endobj");
            }

            int xrefPosition = Encoding.ASCII.GetByteCount(pdf.ToString());
            pdf.AppendLine("xref");
            pdf.AppendLine("0 " + (objects.Count + 1));
            pdf.AppendLine("0000000000 65535 f ");

            for (int i = 1; i < positions.Count; i++)
            {
                pdf.AppendLine(positions[i].ToString("D10") + " 00000 n ");
            }

            pdf.AppendLine("trailer");
            pdf.AppendLine("<< /Size " + (objects.Count + 1) + " /Root 1 0 R >>");
            pdf.AppendLine("startxref");
            pdf.AppendLine(xrefPosition.ToString());
            pdf.AppendLine("%%EOF");

            return pdf.ToString();
        }

        string PdfText(string text)
        {
            return text.Replace("\\", "\\\\").Replace("(", "\\(").Replace(")", "\\)");
        }
    }
}
