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
using static System.Windows.Forms.AxHost;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;
using System.Xml.Linq;

namespace Ecommerce
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            {
                if (Session["username"]==null)
                {
                    Response.Redirect("UserLogin.aspx");
                }
                else
                {
                    if(!Page.IsPostBack)
                    {
                        getdetailsbyid();
                        
                    }
                }
            }
            
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            UserService userService = new UserService();
            Users users = new Users();
            DataTable dt = new DataTable();
            users.UserName = Session["username"].ToString();
            if (newpwdtxt.Text == "")
            {
                users.Password = oldpwdtxt.Text;
            }
            else
            {
                users.Password = newpwdtxt.Text;
            }
            users.FullName = Fnametxt.Text;
            users.DateofBirth = Dobtxt.Text;
            users.ContactNO = Contacttxt.Text;
            users.Email = EmailTxt.Text;
            users.State = Statetxt.Text;
            users.Pincode = int.Parse(pincodetxt.Text);
            users.FullAddress = addresstxt.Text;
            users.City = Citytxt.Text;
            userService.Updateuser(users);
            //oldpwdtxt = newpwdtxt.Text;
            getdetailsbyid();
        }
        void getdetailsbyid()
        {
            UserService userService = new UserService();
            Users users = new Users();
            DataTable dt = new DataTable();
            users.UserName = Session["username"].ToString();
            dt=userService.CheckUser(users);
            if (dt.Rows.Count > 0)
            {
                Fnametxt.Text = dt.Rows[0]["full_name"].ToString();
                useridtxt.Text = dt.Rows[0]["user_name"].ToString();
                oldpwdtxt.Text = dt.Rows[0]["password"].ToString();
                Dobtxt.Text = dt.Rows[0]["dob"].ToString();
                Contacttxt.Text = dt.Rows[0]["contact_no"].ToString();
                EmailTxt.Text = dt.Rows[0]["email"].ToString();
                Statetxt.Text = dt.Rows[0]["state"].ToString();
                Citytxt.Text = dt.Rows[0]["city"].ToString();
                pincodetxt.Text = dt.Rows[0]["pincode"].ToString();
                addresstxt.Text = dt.Rows[0]["full_address"].ToString();

            }
        }

        
    }
}