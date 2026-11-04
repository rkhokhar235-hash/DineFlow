using System;
using System.Web.UI;

namespace DineFlow.Admin.MasterPages
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Master page initialization logic for Admin panel
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect(ResolveUrl("~/Login.aspx"), false);
            Context.ApplicationInstance.CompleteRequest();
        }

        // Public property to allow child pages to set the page title and breadcrumb dynamically
        public string PageTitle
        {
            set
            {
                litPageTitle.Text = value;
                litBreadcrumbCurrent.Text = value;
            }
        }
    }
}