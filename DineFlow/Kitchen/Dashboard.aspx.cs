using System;
using System.Web.UI;

namespace DineFlow.Kitchen
{
    public partial class Dashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var kitchenMaster = Master as MasterPages.Kitchen;
                if (kitchenMaster != null)
                {
                    kitchenMaster.PageTitle = "Kitchen Dashboard";
                }
            }
        }
    }
}
