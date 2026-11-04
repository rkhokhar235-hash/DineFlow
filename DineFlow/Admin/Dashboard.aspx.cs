using System;
using System.Web.UI;

namespace DineFlow.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Future-ready page initialization for Dashboard
                // Setting page title dynamically via MasterPage property if available
                var adminMaster = Master as MasterPages.Admin;
                if (adminMaster != null)
                {
                    adminMaster.PageTitle = "Dashboard";
                }
            }
        }
    }
}