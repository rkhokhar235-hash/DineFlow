using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DineFlow.Admin
{
    public partial class MenuManagement : Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        void getCon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void clear()
        {
            txtItemName.Text = string.Empty;
            txtDescription.Text = string.Empty;
            txtPrice.Text = string.Empty;
            hidMenuItemId.Value = string.Empty;
            hidImagePath.Value = string.Empty;
            ddlAvailability.SelectedValue = "true";
        }

        void clearCategory()
        {
            txtNewCategory.Text = string.Empty;
        }

        void fileUpload()
        {
            fnm = "prodimg/" + prodimg.FileName;
            prodimg.SaveAs(Server.MapPath(fnm));
        }

        void fillCombo()
        {
            getCon();
            da = new SqlDataAdapter("Select * from MenuCategories", con);
            ds = new DataSet();
            da.Fill(ds);

            ddlCategory.Items.Clear();
            rptCategoryTabs.DataSource = ds.Tables[0];
            rptCategoryTabs.DataBind();

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                ddlCategory.Items.Add(ds.Tables[0].Rows[i]["CategoryName"].ToString());
            }

            con.Close();
        }

        void fillGrid()
        {
            getCon();
            da = new SqlDataAdapter("select m.MenuItemId,m.ItemName,m.Description,m.Price,c.CategoryName,m.ImagePath,m.IsAvailable from MenuItems m inner join MenuCategories c on m.CategoryId=c.CategoryId order by m.MenuItemId desc", con);
            ds = new DataSet();
            da.Fill(ds);
            gvMenuItems.DataSource = ds.Tables[0];
            gvMenuItems.DataBind();
            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillCombo();
                fillGrid();
            }
        }

        protected void btnAddItem_Click(object sender, EventArgs e)
        {
            pnlItemEditor.Style["display"] = "block";
            pnlItemEditor.Attributes["class"] = "modal fade show d-block";
        }

        protected void btnCloseEditor_Click(object sender, EventArgs e)
        {
            pnlItemEditor.Style["display"] = "none";
            pnlItemEditor.Attributes["class"] = "modal fade show";
        }

        protected void btnCancelEditor_Click(object sender, EventArgs e)
        {
            pnlItemEditor.Style["display"] = "none";
            pnlItemEditor.Attributes["class"] = "modal fade show";
        }

        protected void gvMenuItems_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex;
            if (!int.TryParse(Convert.ToString(e.CommandArgument), out rowIndex) ||
                rowIndex < 0 || rowIndex >= gvMenuItems.DataKeys.Count)
            {
                return;
            }

            int itemId = Convert.ToInt32(gvMenuItems.DataKeys[rowIndex].Value);

            if (e.CommandName == "editItem")
            {
                editProduct(itemId);
            }
            else if (e.CommandName == "deleteItem")
            {
                deleteProduct(itemId);
            }
        }

        void deleteProduct(int itemId)
        {
            getCon();
            SqlTransaction transaction = con.BeginTransaction();

            try
            {
                cmd = new SqlCommand("delete from cart_tbl where Cart_Prod_Id = @MenuItemId", con, transaction);
                cmd.Parameters.AddWithValue("@MenuItemId", itemId);
                cmd.ExecuteNonQuery();

                cmd = new SqlCommand("delete from MenuItems where MenuItemId = @MenuItemId", con, transaction);
                cmd.Parameters.AddWithValue("@MenuItemId", itemId);
                int affectedRows = cmd.ExecuteNonQuery();
                transaction.Commit();

                pnlMessage.Visible = true;
                pnlMessage.CssClass = "alert alert-success mb-4";
                litMessage.Text = affectedRows == 1 ? "Menu item deleted successfully." : "Menu item is already removed.";
            }
            catch
            {
                transaction.Rollback();
                pnlMessage.Visible = true;
                pnlMessage.CssClass = "alert alert-danger mb-4";
                litMessage.Text = "The menu item could not be deleted.";
            }
            finally
            {
                con.Close();
            }

            fillGrid();
        }

        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            addCategory();
            fillCombo();
            fillGrid();
        }

        void addCategory()
        {
            getCon();

            cmd = new SqlCommand(
                "insert into MenuCategories(CategoryName) values('" + txtNewCategory.Text + "')",
                con);
            cmd.ExecuteNonQuery();

            clearCategory();
            con.Close();
            Response.Write("<script>alert('Category Added Successfully')</script>");
        }

        protected void addprod_Click(object sender, EventArgs e)
        {
            addProduct();
        }

        void addProduct()
        {
            if (hidMenuItemId.Value != "")
            {
                updateProduct();
                return;
            }

            if (!prodimg.HasFile)
            {
                Response.Write("<script>alert('Product image is required')</script>");
                return;
            }

            getCon();
            fileUpload();

            da = new SqlDataAdapter("select * from MenuCategories where CategoryName='" + ddlCategory.SelectedItem + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            int cid = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
            ViewState["cid"] = cid;

            cmd = new SqlCommand("insert into MenuItems(CategoryId,ItemName,Description,Price,ImagePath,IsAvailable) values('" + ViewState["cid"] + "','" + txtItemName.Text + "','" + txtDescription.Text + "','" + txtPrice.Text + "','" + fnm + "','" + ddlAvailability.SelectedValue + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Product Added Successfully')</script>");
            clear();
            fillGrid();
            pnlItemEditor.Style["display"] = "none";
            pnlItemEditor.Attributes["class"] = "modal fade show";
        }

        void editProduct(int itemId)
        {
            getCon();
            da = new SqlDataAdapter("select m.*,c.CategoryName from MenuItems m inner join MenuCategories c on m.CategoryId=c.CategoryId where m.MenuItemId='" + itemId + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count == 0)
            {
                con.Close();
                return;
            }

            hidMenuItemId.Value = ds.Tables[0].Rows[0]["MenuItemId"].ToString();
            hidImagePath.Value = ds.Tables[0].Rows[0]["ImagePath"].ToString();
            txtItemName.Text = ds.Tables[0].Rows[0]["ItemName"].ToString();
            txtDescription.Text = ds.Tables[0].Rows[0]["Description"].ToString();
            txtPrice.Text = ds.Tables[0].Rows[0]["Price"].ToString();
            ddlCategory.SelectedValue = ds.Tables[0].Rows[0]["CategoryName"].ToString();
            ddlAvailability.SelectedValue = Convert.ToBoolean(ds.Tables[0].Rows[0]["IsAvailable"]) ? "true" : "false";
            litEditorTitle.Text = "Edit menu item";
            pnlItemEditor.Style["display"] = "block";
            pnlItemEditor.Attributes["class"] = "modal fade show d-block";
            con.Close();
        }

        void updateProduct()
        {
            getCon();
            string imagePath = hidImagePath.Value;

            if (prodimg.HasFile)
            {
                fileUpload();
                imagePath = fnm;
            }

            da = new SqlDataAdapter("select * from MenuCategories where CategoryName='" + ddlCategory.SelectedItem + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            int cid = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
            ViewState["cid"] = cid;

            cmd = new SqlCommand("update MenuItems set CategoryId='" + ViewState["cid"] + "',ItemName='" + txtItemName.Text + "',Description='" + txtDescription.Text + "',Price='" + txtPrice.Text + "',ImagePath='" + imagePath + "',IsAvailable='" + ddlAvailability.SelectedValue + "' where MenuItemId='" + hidMenuItemId.Value + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Product Updated Successfully')</script>");
            clear();
            fillGrid();
            pnlItemEditor.Style["display"] = "none";
            pnlItemEditor.Attributes["class"] = "modal fade show";
        }
    }
}
