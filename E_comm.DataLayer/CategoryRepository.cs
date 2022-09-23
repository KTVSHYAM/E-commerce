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
    
    public class CategoryRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomDbconn"].ConnectionString);
        SqlDataAdapter command = null;
        public DataTable getall()
        {
            command = new SqlDataAdapter("select * from ecom_Category", connection);
            DataTable dt = new DataTable();
            command.Fill(dt);
            return dt;
        }
    }
    
}
