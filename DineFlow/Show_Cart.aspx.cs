using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DineFlow
{
    public partial class Show_Cart : Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        private string GetCartSessionId()
        {
            if (Session["DineFlow.CartSessionId"] == null)
            {
                Session["DineFlow.CartSessionId"] = Guid.NewGuid().ToString();
            }

            return Session["DineFlow.CartSessionId"].ToString();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DineFlow.CustomerName"] == null ||
                Session["DineFlow.MobileNumber"] == null)
            {
                Response.Redirect("Order.aspx?table=" + Request.QueryString["table"]);
                return;
            }

            LoadTable();

            if (!IsPostBack)
            {
                litCustomerDetails.Text = "Customer: " + Server.HtmlEncode(Session["DineFlow.CustomerName"].ToString()) +
                    " | Mobile: " + Server.HtmlEncode(Session["DineFlow.MobileNumber"].ToString());
                fillCart();
            }
        }

        private void LoadTable()
        {
            int tableNumber;
            if (!int.TryParse(Request.QueryString["table"], out tableNumber) || tableNumber < 1)
            {
                tableNumber = 1;
            }

            Session["DineFlow.TableNumber"] = tableNumber;
        }

        protected void btnBackToMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("Order.aspx?table=" + Session["DineFlow.TableNumber"]);
        }

        protected void btnOrderHistory_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderHistory.aspx");
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            getcon();
            cmd = new SqlCommand("SET QUOTED_IDENTIFIER ON; SET ANSI_NULLS ON;", con);
            cmd.ExecuteNonQuery();
            SqlTransaction transaction = con.BeginTransaction();

            try
            {
                cmd = new SqlCommand(
                    "SELECT c.Cart_Prod_Id, c.Quantity, p.ItemName, p.Price " +
                    "FROM cart_tbl c INNER JOIN MenuItems p ON c.Cart_Prod_Id = p.MenuItemId " +
                    "WHERE c.Cart_Customer_Name = @CustomerName AND c.Cart_User_Id = @MobileNumber AND c.Cart_Table_Number = @TableNumber",
                    con, transaction);
                cmd.Parameters.AddWithValue("@CustomerName", Session["DineFlow.CustomerName"].ToString());
                cmd.Parameters.AddWithValue("@MobileNumber", Session["DineFlow.MobileNumber"].ToString());
                cmd.Parameters.AddWithValue("@TableNumber", Convert.ToInt32(Session["DineFlow.TableNumber"]));

                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);

                if (ds.Tables[0].Rows.Count == 0)
                {
                    transaction.Rollback();
                    lblCheckoutMessage.Text = "Your cart is empty.";
                    lblCheckoutMessage.CssClass = "form-message error";
                    con.Close();
                    return;
                }

                decimal grandTotal = 0;
                foreach (DataRow row in ds.Tables[0].Rows)
                {
                    grandTotal += Convert.ToDecimal(row["Quantity"]) * Convert.ToDecimal(row["Price"]);
                }

                string orderNumber = "DF-" + DateTime.Now.ToString("yyyyMMddHHmmssfff");
                cmd = new SqlCommand(
                    "INSERT INTO Orders (OrderNumber, CustomerName, MobileNumber, TableNumber, TotalAmount, Status) " +
                    "VALUES (@OrderNumber, @CustomerName, @MobileNumber, @TableNumber, @Total, @Status); " +
                    "SELECT SCOPE_IDENTITY();", con, transaction);
                cmd.Parameters.AddWithValue("@OrderNumber", orderNumber);
                cmd.Parameters.AddWithValue("@CustomerName", Session["DineFlow.CustomerName"].ToString());
                cmd.Parameters.AddWithValue("@MobileNumber", Session["DineFlow.MobileNumber"].ToString());
                cmd.Parameters.AddWithValue("@TableNumber", Convert.ToInt32(Session["DineFlow.TableNumber"]));
                cmd.Parameters.AddWithValue("@Total", grandTotal);
                cmd.Parameters.AddWithValue("@Status", "Received");
                int orderId = Convert.ToInt32(cmd.ExecuteScalar());

                foreach (DataRow row in ds.Tables[0].Rows)
                {
                    int quantity = Convert.ToInt32(row["Quantity"]);
                    decimal price = Convert.ToDecimal(row["Price"]);

                    cmd = new SqlCommand(
                        "INSERT INTO OrderItems (OrderID, MenuItemID, ItemName, Quantity, UnitPrice) " +
                        "VALUES (@OrderId, @MenuItemId, @ItemName, @Quantity, @Price)", con, transaction);
                    cmd.Parameters.AddWithValue("@OrderId", orderId);
                    cmd.Parameters.AddWithValue("@MenuItemId", Convert.ToInt32(row["Cart_Prod_Id"]));
                    cmd.Parameters.AddWithValue("@ItemName", row["ItemName"].ToString());
                    cmd.Parameters.AddWithValue("@Quantity", quantity);
                    cmd.Parameters.AddWithValue("@Price", price);
                    cmd.ExecuteNonQuery();
                }

                cmd = new SqlCommand(
                    "DELETE FROM cart_tbl WHERE Cart_Customer_Name = @CustomerName AND Cart_User_Id = @MobileNumber AND Cart_Table_Number = @TableNumber",
                    con, transaction);
                cmd.Parameters.AddWithValue("@CustomerName", Session["DineFlow.CustomerName"].ToString());
                cmd.Parameters.AddWithValue("@MobileNumber", Session["DineFlow.MobileNumber"].ToString());
                cmd.Parameters.AddWithValue("@TableNumber", Convert.ToInt32(Session["DineFlow.TableNumber"]));
                cmd.ExecuteNonQuery();

                transaction.Commit();
                con.Close();

                Session["DineFlow.LastOrderNumber"] = orderNumber;
                Response.Redirect("OrderHistory.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
                return;
            }
            catch
            {
                transaction.Rollback();
                con.Close();
                lblCheckoutMessage.Text = "Order could not be placed. Please try again.";
                lblCheckoutMessage.CssClass = "form-message error";
            }
        }

        void fillCart()
        {
            getcon();
            cmd = new SqlCommand(
                "SELECT c.Cart_Id, c.Cart_Prod_Id, c.Quantity, c.Added_Date, " +
                "p.ImagePath AS Prod_Img, p.ItemName AS Prod_Name, p.Price AS Prod_Price, " +
                "(c.Quantity * p.Price) AS Total " +
                "FROM cart_tbl c INNER JOIN MenuItems p ON c.Cart_Prod_Id = p.MenuItemId " +
                "WHERE c.Cart_Customer_Name = @CustomerName AND c.Cart_User_Id = @MobileNumber AND c.Cart_Table_Number = @TableNumber", con);
            cmd.Parameters.AddWithValue("@CustomerName", Session["DineFlow.CustomerName"].ToString());
            cmd.Parameters.AddWithValue("@MobileNumber", Session["DineFlow.MobileNumber"].ToString());
            cmd.Parameters.AddWithValue("@TableNumber", Convert.ToInt32(Session["DineFlow.TableNumber"]));

            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            decimal grandTotal = 0;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                grandTotal += Convert.ToDecimal(dr["Total"]);
            }

            lblGrandTotal.Text = "Grand Total: Rs. " + grandTotal.ToString("0.00");
            con.Close();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            fillCart();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            fillCart();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int cartId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            GridViewRow row = GridView1.Rows[e.RowIndex];
            DropDownList ddl = (DropDownList)row.FindControl("drpqnt");
            int qty = Convert.ToInt32(ddl.SelectedValue);

            getcon();
            cmd = new SqlCommand(
                "UPDATE cart_tbl SET Quantity = @Quantity, Total = @Quantity * " +
                "(SELECT Price FROM MenuItems WHERE MenuItemId = cart_tbl.Cart_Prod_Id) " +
                "WHERE Cart_Id = @CartId AND Cart_Customer_Name = @CustomerName AND Cart_User_Id = @MobileNumber AND Cart_Table_Number = @TableNumber", con);
            cmd.Parameters.AddWithValue("@Quantity", qty);
            cmd.Parameters.AddWithValue("@CartId", cartId);
            cmd.Parameters.AddWithValue("@CustomerName", Session["DineFlow.CustomerName"].ToString());
            cmd.Parameters.AddWithValue("@MobileNumber", Session["DineFlow.MobileNumber"].ToString());
            cmd.Parameters.AddWithValue("@TableNumber", Convert.ToInt32(Session["DineFlow.TableNumber"]));
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            fillCart();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int cartId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            getcon();
            cmd = new SqlCommand(
                "DELETE FROM cart_tbl WHERE Cart_Id = @CartId AND Cart_Customer_Name = @CustomerName AND Cart_User_Id = @MobileNumber AND Cart_Table_Number = @TableNumber", con);
            cmd.Parameters.AddWithValue("@CartId", cartId);
            cmd.Parameters.AddWithValue("@CustomerName", Session["DineFlow.CustomerName"].ToString());
            cmd.Parameters.AddWithValue("@MobileNumber", Session["DineFlow.MobileNumber"].ToString());
            cmd.Parameters.AddWithValue("@TableNumber", Convert.ToInt32(Session["DineFlow.TableNumber"]));
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            fillCart();
        }
    }
}
