using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace DineFlow.Kitchen
{
    public partial class Completed : Page
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
                "SELECT o.OrderNumber, o.CustomerName, o.TableNumber, o.TotalAmount, o.CreatedAt AS OrderedDate, " +
                "(SELECT COUNT(*) FROM OrderItems i WHERE i.OrderID = o.OrderID) AS ItemCount " +
                "FROM Orders o WHERE o.Status = 'Completed' ORDER BY o.OrderID DESC", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            gvCompleted.DataSource = ds;
            gvCompleted.DataBind();
            lblCompletedCount.Text = ds.Tables[0].Rows.Count.ToString();
            con.Close();
        }
    }
}
