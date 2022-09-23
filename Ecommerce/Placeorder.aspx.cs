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
    public partial class Placeorder : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            TransactionId();
        }
        

        protected void buyorder_Click(object sender, EventArgs e)
        {
            try
            {
                Cart cart = new Cart();
                CartService cartService = new CartService();
                DataTable dt1 = new DataTable();
                dt1 = cartService.gellall();
                int r = dt1.Rows.Count;
                int i = 0;
                while (i < r)
                {

                    TransactionService transactionService = new TransactionService();

                    Transactions transactions = new Transactions()
                    {
                        ProductId = dt1.Rows[i][0].ToString(),
                        ProductName = dt1.Rows[i][1].ToString(),
                        ProductQuantity = int.Parse(dt1.Rows[i][5].ToString()),
                        Tprice = float.Parse(dt1.Rows[i][7].ToString()),
                        Date = DateTime.Now.ToString(),
                        Username = Session["username"].ToString(),
                        TransactionId = id,
                        Address = addresstxt.Text
                    };

                    transactionService.AddTransaction(transactions);
                    i = i + 1;
                }
                
                DataTable dt = new DataTable();
                cartService.Delete();
                Response.Redirect("OrderCompleted.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void TransactionId()
        {
            TransactionService transactionService = new TransactionService();
            Transactions transactions = new Transactions();
            DataTable d = new DataTable();
            d = transactionService.GetMaxTransactionsid();
            if (d.Rows.Count > 0)
            {
                if (d.Rows[0][0].ToString() == "")
                {
                    id = 1;
                }
                else
                {
                    int tid = Convert.ToInt32(d.Rows[0][0].ToString());
                    tid++;
                    id = tid;
                }
            }

        }
    }
}