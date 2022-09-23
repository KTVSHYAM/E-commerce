using E_comm.BL;
using E_comm.Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Ecommerce
{
    public partial class ViewProducts : System.Web.UI.Page
    {
        CartService cartService = new CartService();
        DataTable dt = new DataTable();
        ProductService productService = new ProductService();
        Products products = new Products();
        Cart cart = new Cart();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                dp_Productcategory();
            }
        }

        public void dp_Productcategory()
        {
            CategoryService categoryService = new CategoryService();
            Category category = new Category();
            dt = categoryService.getall();
            if(dt.Rows.Count > 0)
            {
                Productcategory.DataTextField = dt.Columns[1].ToString();
                Productcategory.DataValueField = dt.Columns[0].ToString();
                Productcategory.DataBind();
                Productcategory.Items.Insert(0, "Product Category");
            }
        }

        protected void Productcategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selecteditem=Productcategory.SelectedItem.Text;
            Products products = new Products();
            ProductService productService = new ProductService();
            DataTable dt = new DataTable();
            if(selecteditem== "Product Category")
            {
                dt = productService.GetAllProducts();
                producterrmsg.Visible = false;
            }
            else
            {
                products.PCategory = selecteditem;
                dt = productService.Getproduct(products);
                producterrmsg.Visible = false;
            }
            ProductGrid.DataSourceID = null;
            ProductGrid.DataSource = dt;
            if (dt.Rows.Count > 0)
            {
                ProductGrid.DataBind();
            }
            else
            {
                ProductGrid.DataSource = null;
                ProductGrid.DataBind();
                producterrmsg.Visible=true;
            }


        }

        

        protected void ProductGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (Session["role"] == null)
            {
                Response.Redirect("UserLogin.aspx");
            }
            else
            {
                
                if (e.CommandName == "AddCart")
                {
                    int rowIndex = Convert.ToInt32(e.CommandArgument);
                    GridViewRow r = ProductGrid.Rows[rowIndex];
                    int quan = int.Parse((r.FindControl("quantity") as DropDownList).Text);
                    string ar = r.Cells[0].Text;

                    if (ar != null)
                    {
                        products.PId = ar;
                        cart.ProductId = ar;
                        dt = productService.GetproductbyId(products);
                        int price = int.Parse(dt.Rows[0]["Pprice"].ToString());
                        DataTable dt2 = new DataTable();
                        dt2 = cartService.GetbyId(cart);
                        if (dt2.Rows.Count > 0)
                        {
                            string rc = dt2.Rows[0][0].ToString();
                            int qu = int.Parse(dt2.Rows[0][5].ToString());
                            int newQuan = qu + quan;
                            if(rc==ar)
                            {
                                cart.Pquantity = newQuan;
                                cart.Ptotalprice = price*newQuan;
                                cartService.UpdateCart(cart);
                            }
                        }
                        else
                        {
                            while (dt.Rows.Count > 0)
                            {
                                Cart cart = new Cart();
                                Users user = new Users();
                                UserService userService = new UserService();
                                cart.ProductId = dt.Rows[0]["ProductId"].ToString();
                                cart.Pname = dt.Rows[0]["Pname"].ToString();
                                cart.Pdesc = dt.Rows[0]["Pdesc"].ToString();
                                cart.Pimage = dt.Rows[0]["Pimage"].ToString();
                                cart.Pprice = int.Parse(dt.Rows[0]["Pprice"].ToString());
                                cart.Pquantity = quan;
                                cart.Pcategory = dt.Rows[0]["Pcategory"].ToString();
                                
                                int TotalPrice = price * quan;
                                cart.Ptotalprice = TotalPrice;
                                cart.PUsername = Session["username"].ToString();
                                dt = cartService.AddCart(cart);
                                Session["cart"] = "addcart";

                            }

                        }
                    }

                }
                
                
            }
        }

        protected void ProductGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    }
}