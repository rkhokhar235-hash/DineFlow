using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DineFlow.Visitor
{
    public partial class Contact : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        void getcon()
        {
            conn = new SqlConnection(s);
            conn.Open();
        }

        void clear()
        {
            txtnm.Text = "";
            txtmbl.Text = "";
            txtemail.Text = "";
            DropDownList1.ClearSelection();
            txtMessage.Text = "";
        }

        protected void btnContactSubmit_Click(object sender, EventArgs e)
        {
            if (txtnm.Text == "" || txtemail.Text == "" || txtMessage.Text == "")
            {
                return;
            }

            getcon();
            cmd = new SqlCommand(
                "insert into contact_us(Full_Name,Mobile_Number,Email_Address,Subject,Message) values('" +
                txtnm.Text + "','" + txtmbl.Text + "','" + txtemail.Text + "','" + DropDownList1.SelectedValue + "','" + txtMessage.Text + "')",
                conn
            );
            cmd.ExecuteNonQuery();
            clear();
            if (conn != null)
            {
                conn.Close();
            }
            Label1.Text = "Your message has been sent successfully. We will get back to you soon.";
        }
    }
}