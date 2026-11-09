using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace DineFlow
{
    public partial class OrderDetail : Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

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
                fillOrderItems();
            }
        }

        void fillOrderItems()
        {
            string orderNumber = Request.QueryString["order"];

            if (string.IsNullOrEmpty(orderNumber))
            {
                pnlOrderDetails.Visible = false;
                lblOrderMessage.Text = "Order was not found.";
                lblOrderMessage.CssClass = "form-message error";
                return;
            }

            getcon();

            cmd = new SqlCommand(
                "SELECT o.OrderNumber, o.TableNumber, o.Status, o.TotalAmount, " +
                "i.ItemName, i.Quantity, i.UnitPrice, i.LineTotal " +
                "FROM Orders o " +
                "INNER JOIN OrderItems i ON o.OrderID = i.OrderID " +
                "WHERE o.OrderNumber = @OrderNumber AND o.MobileNumber = @MobileNumber " +
                "ORDER BY i.OrderItemID", con);
            cmd.Parameters.AddWithValue("@OrderNumber", orderNumber);
            cmd.Parameters.AddWithValue("@MobileNumber", Session["DineFlow.MobileNumber"].ToString());

            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                lblOrderNumber.Text = ds.Tables[0].Rows[0]["OrderNumber"].ToString();
                lblTableNumber.Text = ds.Tables[0].Rows[0]["TableNumber"].ToString();
                lblOrderStatus.Text = ds.Tables[0].Rows[0]["Status"].ToString();
                lblOrderTotal.Text = "Rs. " + Convert.ToDecimal(ds.Tables[0].Rows[0]["TotalAmount"]).ToString("0.00");

                gvOrderItems.DataSource = ds;
                gvOrderItems.DataBind();
            }
            else
            {
                pnlOrderDetails.Visible = false;
                lblOrderMessage.Text = "Order was not found.";
                lblOrderMessage.CssClass = "form-message error";
            }

            con.Close();
        }

        protected void btnBackToHistory_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderHistory.aspx");
        }
    }
}
