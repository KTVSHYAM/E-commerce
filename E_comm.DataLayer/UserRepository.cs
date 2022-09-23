using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using E_comm.Entity;
namespace E_comm.DataLayer
{
    public class UserRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomDbconn"].ConnectionString);
        SqlDataAdapter command = null;

        public void AddUser(Users users)
        {

            try
            {

                command = new SqlDataAdapter($"insert into ecom_user values ('{users.UserName}','{users.Password}','{users.FullName}','{users.DateofBirth}','{users.ContactNO}','{users.Email}','{users.State}','{users.City}',{users.Pincode},'{users.FullAddress}')", connection);
                DataTable DT = new DataTable();
                command.Fill(DT);

            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connection.Close();
            }

        }
        public DataTable Login(Users users)
        {
            try
            {
                command = new SqlDataAdapter($"select * from ecom_user where user_name='{users.UserName}' and password='{users.Password}'", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable CheckUser(Users users)
        {
            try
            {
                command = new SqlDataAdapter($"select * from ecom_user where user_name='{users.UserName}'", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable Updateuser(Users users)
        {
            try
            {
                command = new SqlDataAdapter($"update ecom_user set password='{users.Password}',full_name='{users.FullName}',dob='{users.DateofBirth}',contact_no='{users.ContactNO}',email='{users.Email}',state='{users.State}',city='{users.City}',pincode={users.Pincode},full_address='{users.FullAddress}' where user_name='{users.UserName}'", connection);
                DataTable dt=new DataTable();
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
