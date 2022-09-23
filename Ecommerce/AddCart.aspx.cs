using E_comm.BL;
using E_comm.Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    
    public partial class AddCart : System.Web.UI.Page
    {
        
        CartService cartService = new CartService();
        DataTable dt = new DataTable();
        ProductService productService = new ProductService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count != 0)
            {
                GridView1.FooterRow.Cells[0].Text = "Total Amount";
                GridView1.FooterRow.Cells[1].Text = TotalAmount().ToString();
                Placeordeer.Visible = true;
            }

        }

        protected void delete_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton bt = (LinkButton)sender;
                string ar = bt.CommandArgument;
                Cart cart=new Cart();
                cart.ProductId = ar;
                dt=cartService.deletecart(cart);
                GridView1.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void Placeordeer_Click(object sender, EventArgs e)
        {
            
                if(GridView1.Rows.Count>0)
                {
                Response.Redirect("Placeorder.aspx");
                }
                
        }
        public float TotalAmount()
        {
            float tprice = 0;
            foreach(GridViewRow row in GridView1.Rows)
            {
                tprice = tprice + float.Parse(row.Cells[1].Text);
            }
            return tprice;
        }
        
    }
    
}