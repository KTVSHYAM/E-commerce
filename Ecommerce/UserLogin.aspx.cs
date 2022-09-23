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
    public partial class UserLogin : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        Users users = new Users();
        UserService userService = new UserService();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            users.UserName = username.Text;
            users.Password = password.Text;
            dt = userService.Login(users);
            if (dt.Rows.Count > 0)
            {

                Session["username"] = dt.Rows[0][0].ToString();
                Session["role"] = "user";

                Response.Redirect("Homepage.aspx");
            }
            else
            {
                Credentials.Visible = true;
            }

            if (password.Text==null)
            {
                PassErrMsg.EnableViewState = true;
            }
            
        }
    }
}