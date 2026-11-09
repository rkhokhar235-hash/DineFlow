using System;
using System.Web.UI;

namespace DineFlow.Kitchen.MasterPages
{
    public partial class Kitchen : MasterPage
    {
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect(ResolveUrl("~/Login.aspx"), false);
            Context.ApplicationInstance.CompleteRequest();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DineFlow.Role"] == null ||
                Session["DineFlow.Role"].ToString() != "Kitchen")
            {
                Response.Redirect(ResolveUrl("~/Login.aspx"), false);
                Context.ApplicationInstance.CompleteRequest();
            }
        }

        public string PageTitle
        {
            set { litPageTitle.Text = value; }
        }
    }
}
