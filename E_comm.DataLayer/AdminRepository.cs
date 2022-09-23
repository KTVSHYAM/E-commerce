using E_comm.Entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace E_comm.DataLayer
{
    public class AdminRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomDbconn"].ConnectionString);
        SqlDataAdapter command = null;
        public DataTable AdminLogin(Admin admin)
        {
            try
            {
                command = new SqlDataAdapter($"select * from ecom_Admins where Admin_id='{admin.AdminId}' and password='{admin.password}'", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
