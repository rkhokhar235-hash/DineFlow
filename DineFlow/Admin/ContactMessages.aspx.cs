using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace DineFlow.Admin
{
    public partial class ContactMessages : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getdata();
            }
        }

        void getdata()
        {
            getcon();
            da = new SqlDataAdapter("select * from contact_us order by Id desc", conn);
            ds = new DataSet();
            da.Fill(ds);

            gvContactMessages.DataSource = ds;
            gvContactMessages.DataBind();
        }

        void getcon()
        {
            if (conn == null)
            {
                conn = new SqlConnection(s);
            }
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            getdata();
        }

        protected void gvContactMessages_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_dlt")
            {
                int did = Convert.ToInt32(e.CommandArgument);

                getcon();
                cmd = new SqlCommand("delete from contact_us where Id = " + did, conn);
                cmd.ExecuteNonQuery();

                getdata();
            }
        }
    }
}