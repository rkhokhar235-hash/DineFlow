using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DineFlow
{
    public partial class Order : Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm, nm;
        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            pnlCartToast.Visible = false;

            if (!IsPostBack)
            {
                LoadTable();
            }

            LoadCustomerDetails();
            LoadCartCount();
            filldatalist();
        }

        private void LoadTable()
        {
            int tableNumber;
            if (!int.TryParse(Request.QueryString["table"], out tableNumber) || tableNumber < 1)
            {
                tableNumber = 1;
            }

            Session["DineFlow.TableNumber"] = tableNumber;
            litTableTitle.Text = "Table " + tableNumber + " Menu";
        }

        void filldatalist()
        {
            getCon();
            da = new SqlDataAdapter("select m.MenuItemId,m.ItemName,m.Description,m.Price,m.ImagePath,c.CategoryName from MenuItems m inner join MenuCategories c on m.CategoryId=c.CategoryId order by c.CategoryName,m.ItemName", con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count == 0)
            {
                pnlMenuMessage.Visible = true;
                litMenuMessage.Text = "No menu items available";
                con.Close();
                return;
            }

            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
            con.Close();
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            string customerName = txtCustomerName.Text.Trim();
            string mobileNumber = txtMobileNumber.Text.Trim();

            if (customerName == "")
            {
                lblFormMessage.Text = "Customer name is required.";
                lblFormMessage.CssClass = "form-message error";
                return;
            }

            if (!Regex.IsMatch(mobileNumber, @"^\d{10}$"))
            {
                lblFormMessage.Text = "Mobile number must contain exactly 10 digits.";
                lblFormMessage.CssClass = "form-message error";
                return;
            }

            Session["DineFlow.CustomerName"] = customerName;
            Session["DineFlow.MobileNumber"] = mobileNumber;
            LoadCustomerDetails();
            lblCustomerMessage.Text = "Customer details saved successfully";
            lblCustomerMessage.CssClass = "form-message success";
        }

        private void LoadCustomerDetails()
        {
            bool hasCustomerDetails = Session["DineFlow.CustomerName"] != null &&
                                      Session["DineFlow.MobileNumber"] != null;

            pnlCustomerForm.Visible = !hasCustomerDetails;
            pnlCustomerSummary.Visible = hasCustomerDetails;
            pnlHeaderCustomerSummary.Visible = hasCustomerDetails;

            if (hasCustomerDetails)
            {
                string customerName = Server.HtmlEncode(Session["DineFlow.CustomerName"].ToString());
                string mobileNumber = Server.HtmlEncode(Session["DineFlow.MobileNumber"].ToString());
                litCustomerName.Text = customerName;
                litCustomerMobile.Text = mobileNumber;
                litHeaderCustomerName.Text = customerName;
                litHeaderCustomerMobile.Text = mobileNumber;
            }
        }

        private void LoadCartCount()
        {
            int cartCount = 0;

            if (Session["DineFlow.CustomerName"] != null &&
                Session["DineFlow.MobileNumber"] != null)
            {
                getCon();
                cmd = new SqlCommand("select ISNULL(SUM(c.Quantity),0) from cart_tbl c inner join MenuItems p on c.Cart_Prod_Id=p.MenuItemId where c.Cart_User_Id='" + Session["DineFlow.MobileNumber"] + "' and c.Cart_Table_Number='" + Session["DineFlow.TableNumber"] + "' and c.Quantity > 0", con);
                cartCount = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();
            }

            litCartCount.Text = cartCount.ToString();
            pnlCartCount.Visible = cartCount > 0;
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName != "cmd_addcart")
            {
                return;
            }

            if (Session["DineFlow.CustomerName"] == null ||
                Session["DineFlow.MobileNumber"] == null)
            {
                pnlCustomerForm.Visible = true;
                lblFormMessage.Text = "Please save customer details before adding items.";
                lblFormMessage.CssClass = "form message error";
                return;
            }

            int menuItemId = Convert.ToInt32(e.CommandArgument);
            getCon();

            da = new SqlDataAdapter("select MenuItemId,Price from MenuItems where MenuItemId='" + menuItemId + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                decimal price = Convert.ToDecimal(ds.Tables[0].Rows[0]["Price"]);
                cmd = new SqlCommand("select Cart_Id,Quantity from cart_tbl where Cart_User_Id='" + Session["DineFlow.MobileNumber"] + "' and Cart_Table_Number='" + Session["DineFlow.TableNumber"] + "' and Cart_Prod_Id='" + menuItemId + "'", con);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    int quantity = Convert.ToInt32(ds.Tables[0].Rows[0]["Quantity"]) + 1;
                    int cartId = Convert.ToInt32(ds.Tables[0].Rows[0]["Cart_Id"]);
                    cmd = new SqlCommand("UPDATE cart_tbl SET Quantity='" + quantity + "',Total='" + (quantity * price) + "' WHERE Cart_Id='" + cartId + "' AND Cart_User_Id='" + Session["DineFlow.MobileNumber"] + "'", con);
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    cmd = new SqlCommand("insert into cart_tbl(Cart_User_Id,Cart_Customer_Name,Cart_Table_Number,Cart_Prod_Id,Quantity,Total,Added_Date) values('" + Session["DineFlow.MobileNumber"] + "','" + Session["DineFlow.CustomerName"] + "','" + Session["DineFlow.TableNumber"] + "','" + menuItemId + "','1','" + price + "',GETDATE())", con);
                    cmd.ExecuteNonQuery();
                }
            }

            con.Close();
            LoadCartCount();
            pnlCartToast.Visible = true;
            litCartToast.Text = "Item added to your cart successfully.";
        }

        protected void btnCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show_Cart.aspx?table=" + Session["DineFlow.TableNumber"]);
        }

        protected string GetImageUrl(object imagePath)
        {
            if (imagePath == null || imagePath == DBNull.Value || imagePath.ToString().Trim() == "")
            {
                return ResolveUrl("~/Assets/Images/Menu/dish-1.jpg");
            }

            string path = imagePath.ToString().Trim().Replace("\\", "/").TrimStart('~', '/');
            string adminPath = "Admin/" + path;
            if (File.Exists(Server.MapPath("~/" + adminPath)))
            {
                return ResolveUrl("~/" + adminPath);
            }

            return ResolveUrl("~/Assets/Images/Menu/dish-1.jpg");
        }

        private void getCon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
    }
}
