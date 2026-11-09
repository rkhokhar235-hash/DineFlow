using System;
using System.Web.UI;

namespace DineFlow
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DineFlow.Role"] != null)
            {
                if (Session["DineFlow.Role"].ToString() == "Admin")
                {
                    Response.Redirect("~/Admin/Dashboard.aspx");
                }
                else if (Session["DineFlow.Role"].ToString() == "Kitchen")
                {
                    Response.Redirect("~/Kitchen/Dashboard.aspx");
                }
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string email = txteml.Text.Trim().ToLower();
            string password = txtpass.Text;

            if (email == "admin@gmail.com" && password == "Admin@123")
            {
                Session["DineFlow.Username"] = "admin";
                Session["DineFlow.Role"] = "Admin";
                Response.Redirect("~/Admin/Dashboard.aspx");
                return;
            }

            if (email == "kitchen@gmail.com" && password == "kitchen@123")
            {
                Session["DineFlow.Username"] = "kitchen";
                Session["DineFlow.Role"] = "Kitchen";
                Response.Redirect("~/Kitchen/Dashboard.aspx");
                return;
            }

            lblMessage.Text = "Invalid email or password.";
            lblMessage.Visible = true;
        }
    }
}
