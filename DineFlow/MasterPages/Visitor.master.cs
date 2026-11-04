using System;
using System.Web.UI;

namespace DineFlow.MasterPages
{
    public partial class Visitor : System.Web.UI.MasterPage
    {
        protected bool IsOrderPage
        {
            get { return Request.Url.AbsolutePath.EndsWith("Order.aspx", StringComparison.OrdinalIgnoreCase); }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Master Page initialization logic
            }
        }
    }
}