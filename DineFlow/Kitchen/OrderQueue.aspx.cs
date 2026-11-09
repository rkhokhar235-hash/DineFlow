using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DineFlow.Kitchen
{
    public partial class OrderQueue : Page
    {
        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillOrders();
            }
        }

        void fillOrders()
        {
            SqlConnection con = new SqlConnection(s);
            con.Open();
            SqlCommand cmd = new SqlCommand(
                "SELECT o.OrderID, o.OrderNumber, o.CustomerName, o.TableNumber, o.TotalAmount, o.CreatedAt AS OrderedDate, " +
                "(SELECT COUNT(*) FROM OrderItems i WHERE i.OrderID = o.OrderID) AS ItemCount " +
                "FROM Orders o WHERE o.Status = 'Received' ORDER BY o.OrderID DESC", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            gvOrderQueue.DataSource = ds;
            gvOrderQueue.DataBind();
            lblNewOrderCount.Text = ds.Tables[0].Rows.Count.ToString();
            con.Close();
        }

        protected void gvOrderQueue_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "StartOrder")
            {
                SqlConnection con = new SqlConnection(s);
                con.Open();
                SqlCommand cmd = new SqlCommand("UPDATE Orders SET Status = 'Preparing' WHERE OrderID = @OrderId", con);
                cmd.Parameters.AddWithValue("@OrderId", Convert.ToInt32(e.CommandArgument));
                cmd.ExecuteNonQuery();
                con.Close();
                fillOrders();
            }
        }
    }
}
