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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    //viewBook.Visible= false;
                    //viewcloth.Visible= false;
                    UserLogin.Visible = true;
                    SignUp.Visible = true;
                    Logout.Visible = false;
                    HelloUs.Visible = false;

                    admin.Visible = true;
                    //addbook.Visible = false;
                    addproduct.Visible = false;
                    //users.Visible = false;
                    transaction.Visible = false;
                }
                else if (Session["role"].Equals("user"))
                {

                    //viewBook.Visible=true;
                    //viewcloth.Visible = true;
                    UserLogin.Visible = false;
                    SignUp.Visible = false;
                    Logout.Visible = true;
                    HelloUs.Visible = true;
                    HelloUs.Text = "Hello " + Session["username"].ToString();

                    admin.Visible = true;
                    //addbook.Visible = false;
                    addproduct.Visible = false;
                    //users.Visible = false;
                    transaction.Visible = false;
                }
                else if (Session["role"].Equals("admin"))
                {
                    //ViewBook.Visible = true;
                    UserLogin.Visible = false;
                    SignUp.Visible = false;
                    Logout.Visible = true;
                    HelloUs.Visible = true;
                    HelloUs.Text = "Hello " + Session["username"].ToString();

                    admin.Visible = false;
                    //addbook.Visible = true;
                    addproduct.Visible = true;
                    //users.Visible = true;
                    transaction.Visible = true;
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
            }
            catch (Exception)
            {

                throw;
            }

            Cart cart = new Cart();
            CartService cartService = new CartService();
            DataTable dt = new DataTable();
            dt = cartService.gellall();
            if (dt.Rows.Count > 0)
            {
                cartcounttxt.Text = dt.Rows.Count.ToString();
            }
            else
            {
                cartcounttxt.Text = "";
            }
            
        }

        protected void admin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }


        protected void UserLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSignUp.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("homepage.aspx");
        }


        protected void cart_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCart.aspx");
        }


        

        protected void addproduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProducts.aspx");
        }
       

        protected void products_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProducts.aspx");
        }

        protected void HelloUs_Click(object sender, EventArgs e)
        {
            if (Session["role"].Equals("user"))
            {
                Response.Redirect("Profile.aspx");
            }

            
        }

        protected void transaction_Click(object sender, EventArgs e)
        {
            Response.Redirect("AllTransactions.aspx");
        }
    }
}
