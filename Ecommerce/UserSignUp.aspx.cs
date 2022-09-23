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
    public partial class UserSignUp : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UserSign_Click(object sender, EventArgs e)
        {
            UserService userService = new UserService();
            Users users = new Users();
            DataTable dt = new DataTable();
            {
                users.UserName = username.Text;
                dt=userService.CheckUser(users);
                if(dt.Rows.Count==0)
                {
                    users.Password = password.Text;
                    users.FullName = fName.Text;
                    users.DateofBirth = dob.Text;
                    users.ContactNO = contact.Text;
                    users.Email = email.Text;
                    users.State = state.Text;
                    users.Pincode = int.Parse(pincode.Text);
                    users.FullAddress = address.Text;
                    users.City = city.Text;
                    userService.AddUser(users);
                    Response.Write("<script>alert('Signup successful');</script>");
                    Response.Redirect("UserLogin.aspx");
                }
                else
                {
                    userLabel.Text = "User already exit";
                }
                
               
            }

        }
    }
}