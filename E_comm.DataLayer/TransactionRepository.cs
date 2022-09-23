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
    public class TransactionRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomDbconn"].ConnectionString);
        SqlDataAdapter command = null;
        public DataTable AddTransaction(Transactions transactions)
        {
            command = new SqlDataAdapter($"insert into ecom_Transactions values('{transactions.Username}','{transactions.ProductId}','{transactions.ProductName}',{transactions.ProductQuantity},{transactions.Tprice},'{transactions.Date}',{transactions.TransactionId},'{transactions.Address}') ", connection);
            DataTable dt = new DataTable();
            command.Fill(dt);
            return dt;
        }
        public DataTable GetMaxTransactionsid()
        {
            command = new SqlDataAdapter($"select MAX(transactionid) from ecom_Transactions", connection);
            DataTable dt=new DataTable();
            command.Fill(dt);
            return dt;
        }
        public DataTable GetbyorderId(Transactions transactions)
        {
            command = new SqlDataAdapter($"select * from ecom_Transactions where transactionid={transactions.TransactionId}", connection);
            DataTable dt = new DataTable();
            command.Fill(dt);
            return dt;
        }
       
    }
}
