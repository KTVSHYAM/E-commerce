using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace E_comm.Entity
{
    public class Transactions
    {
        public int TransactionId { get; set; }
        public string Username { get; set; }
        public string ProductId { get; set; }
        public string ProductName { get; set; }
        public int ProductQuantity { get; set; }
        public float Tprice { get; set; }
        public string Date { get; set; }
        public string Address { get; set; }
    }
}
