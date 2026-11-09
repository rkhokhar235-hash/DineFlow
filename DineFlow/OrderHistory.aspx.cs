using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace DineFlow
{
    public partial class OrderHistory : Page
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
                fillOrderHistory();
            }
        }

        void fillOrderHistory()
        {
            con = new SqlConnection(s);
            con.Open();

            cmd = new SqlCommand(
                "SELECT OrderNumber, TableNumber, TotalAmount AS Total, Status AS OrderStatus, CreatedAt AS OrderedDate " +
                "FROM Orders WHERE MobileNumber = @MobileNumber ORDER BY OrderID DESC", con);
            cmd.Parameters.AddWithValue("@MobileNumber", Session["DineFlow.MobileNumber"].ToString());

            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            gvOrderHistory.DataSource = ds;
            gvOrderHistory.DataBind();
            con.Close();

            if (Session["DineFlow.LastOrderNumber"] != null)
            {
                lblHistoryMessage.Text = "Your order " + Server.HtmlEncode(Session["DineFlow.LastOrderNumber"].ToString()) + " was received successfully.";
                lblHistoryMessage.CssClass = "form-message success";
                Session.Remove("DineFlow.LastOrderNumber");
            }
        }

        protected void btnGoToMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("Order.aspx?table=" + Session["DineFlow.TableNumber"]);
        }
    }
}
