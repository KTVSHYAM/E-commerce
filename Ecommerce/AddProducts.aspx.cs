using E_comm.BL;
using E_comm.Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class AddProducts : System.Web.UI.Page
    {
        static string global_filepath;

        ProductService productService = new ProductService();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"]==null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }

        protected void Go_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = new DataTable();
                Products products = new Products();
                products.PId = productid.Text;
                dt = productService.GetproductbyId(products);
                if (dt.Rows.Count > 0)
                {
                    
                    productname.Text = dt.Rows[0]["Pname"].ToString();
                    Brand.Text = dt.Rows[0]["Pbrand"].ToString();
                    Stock.Text = dt.Rows[0]["Pstock"].ToString();
                    Description.Text = dt.Rows[0]["Pdesc"].ToString();
                    Price.Text = dt.Rows[0]["Pprice"].ToString();
                    global_filepath = dt.Rows[0]["Pimage"].ToString();
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            //try
            {
                
                
                string filepath = "~/Img_inventory/products.png";
                string filename = Path.GetFileName(productimage.PostedFile.FileName);
                
                    productimage.SaveAs(Server.MapPath("Img_inventory/" + filename));
                    filepath = "~/Img_inventory/" + filename;
                
                
                

                Products products = new Products()
                {
                    PId = productid.Text,
                    PName = productname.Text,
                    PBrand = Brand.Text,
                    PDescription = Description.Text,
                    PImage = filepath,
                    PPrice = int.Parse(Price.Text),
                    Pstock = int.Parse(Stock.Text),
                    PCategory = category.Text
                };
                DataTable dt = new DataTable();
                dt = productService.GetproductbyId(products);
                if (dt.Rows.Count > 0)
                {
                    productiderr.Visible = true;
                }
                else
                {
                    productService.Add_Product(products);
                    ProductGrid.DataBind();
                    productid.Text = String.Empty;
                    productname.Text = String.Empty;
                    Brand.Text = String.Empty;
                    Description.Text = String.Empty;
                    Price.Text = String.Empty;
                    Stock.Text = String.Empty;
                       
                }
                productiderr.Visible = false;

            }
            /*catch (Exception)
            {

                throw;
            }*/
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            try
            {
                string filepath = "~/Img_inventory/products.png";
                string filename = Path.GetFileName(productimage.PostedFile.FileName);
                if (filename == "" || filename == null)
                {
                    filepath = global_filepath;
                }
                else
                {
                    productimage.SaveAs(Server.MapPath("Img_inventory/" + filename));
                    filepath = "~/Img_inventory/" + filename;
                }
                Products products = new Products()
                {
                    PId = productid.Text,
                    PName = productname.Text,
                    PBrand = Brand.Text,
                    PDescription = Description.Text,
                    PImage = filepath,
                    PPrice = int.Parse(Price.Text),
                    Pstock = int.Parse(Stock.Text),
                    PCategory = category.Text
                };
                productService.Update_Product(products);
                ProductGrid.DataBind();
                productiderr.Visible = false;

            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            try
            {
                Products products = new Products()
                {
                    PId = productid.Text
                };
                productService.Delete_Product(products);
                ProductGrid.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}