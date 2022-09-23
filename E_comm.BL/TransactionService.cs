using E_comm.DataLayer;
using E_comm.Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace E_comm.BL
{
    public class TransactionService
    {
        TransactionRepository transactionRepository;
        public TransactionService()
        {
            transactionRepository = new TransactionRepository();
        }
        public DataTable AddTransaction(Transactions transactions)
        {
            try
            {
                return transactionRepository.AddTransaction(transactions);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable GetMaxTransactionsid()
        {
            try
            {
                return transactionRepository.GetMaxTransactionsid();
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable GetbyorderId(Transactions transactions)
        {
            try
            {
                return transactionRepository.GetbyorderId(transactions);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
