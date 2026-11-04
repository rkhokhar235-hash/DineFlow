using System;
using System.Web.UI;

namespace DineFlow
{
    public partial class Login : Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text.Trim().ToLower() == "admin" && txtPassword.Text == "Admin@123")
            {
                Session["DineFlow.Username"] = "admin";
                Session["DineFlow.Role"] = "Admin";
                Response.Redirect("~/Admin/Dashboard.aspx");
                return;
            }

            if (txtUsername.Text.Trim().ToLower() == "kitchen" && txtPassword.Text == "Kitchen@123")
            {
                Session["DineFlow.Username"] = "kitchen";
                Session["DineFlow.Role"] = "Kitchen";
                Response.Redirect("~/Kitchen/Dashboard.aspx");
                return;
            }

            lblMessage.Text = "Invalid username or password.";
            lblMessage.Visible = true;
        }
    }
}
