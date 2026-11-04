using System;
using System.Web.UI;

namespace DineFlow.Visitor
{
    public partial class Error404 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Page initialization logic for Custom 404 page
            }
        }
    }
}