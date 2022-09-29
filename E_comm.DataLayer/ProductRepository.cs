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
    public class ProductRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomDbconn"].ConnectionString);
        SqlDataAdapter command = null;
        public DataTable Getproduct(Products products)
        {
            try
            {
                command = new SqlDataAdapter($"select * from ecom_products where Pcategory='{products.PCategory}'", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable GetproductbyId(Products products)
        {
            try
            {
                command = new SqlDataAdapter($"select * from ecom_products where ProductId='{products.PId}'", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void Add_Product(Products products)
        {
            try
            {
                command = new SqlDataAdapter($"insert into ecom_products values('{products.PName}','{products.PBrand}','{products.PDescription}','{products.PImage}',{products.PPrice},{products.Pstock},'{products.PCategory}','{products.PId}')", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable Delete_Product(Products products)
        {
            try
            {
                command = new SqlDataAdapter($"delete from ecom_products where ProductId='{products.PId}'", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable Update_Product(Products products)
        {
            try
            {
                command = new SqlDataAdapter($"update ecom_products set Pname='{products.PName}',Pbrand='{products.PBrand}',Pdesc='{products.PDescription}',Pimage='{products.PImage}',Pprice={products.PPrice},Pstock={products.Pstock},Pcategory='{products.PCategory}' where ProductId='{products.PId}'", connection);
                DataTable dt = new DataTable();
                command.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable GetAllProducts()
        {
            try
            {
                command = new SqlDataAdapter("select * from ecom_products", connection);
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
