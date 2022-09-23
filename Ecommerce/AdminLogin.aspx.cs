using E_comm.BL;
using E_comm.Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        Admin admin = new Admin();
        DataTable dt = new DataTable();
        Adminservice adminservice = new Adminservice();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void adminlogin_Click(object sender, EventArgs e)
        {
            try
            {
                admin.AdminId = adminid.Text;
                admin.password = password.Text;
                dt = adminservice.AdminLogin(admin);
                if (dt.Rows.Count > 0)
                {

                    Session["username"] = dt.Rows[0][0].ToString();
                    Session["role"] = "admin";
                    Response.Redirect("Homepage.aspx");
                }
                else
                {
                    Credentialsmsg.Visible = true;
                }


            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}