using E_comm.Entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace E_comm.DataLayer
{
    public class CartRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomDbconn"].ConnectionString);
        SqlDataAdapter command = null;
        
        public DataTable AddCart(Cart cart)
        {
            try
            {
                
                command = new SqlDataAdapter($"insert into ecom_cart values('{cart.ProductId}','{cart.Pname}','{cart.Pdesc}','{cart.Pimage}',{cart.Pprice},{cart.Pquantity},'{cart.Pcategory}',{cart.Ptotalprice},'{cart.PUsername}')", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable deletecart(Cart cart)
        {
            try
            {
                command = new SqlDataAdapter($"delete from ecom_cart where ProductId='{cart.ProductId}' ", connection);
                DataTable dt=new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable GetbyId(Cart cart)
        {
            try
            {
                command = new SqlDataAdapter($"select * from ecom_cart where ProductId='{cart.ProductId}'", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable UpdateCart(Cart cart)
        {
            try
            {
                command = new SqlDataAdapter($"update ecom_cart set Pquantity={cart.Pquantity},ptotalprice={cart.Ptotalprice} where ProductId='{cart.ProductId}'", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable gellall()
        {
            try
            {
                command = new SqlDataAdapter("select * from ecom_cart", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable Delete()
        {
            try
            {
                command = new SqlDataAdapter("delete from ecom_cart", connection);
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
