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
    public class CartService
    {
        CartRepository cartRepository;
        public CartService()
        {
            cartRepository = new CartRepository();
        }
        public DataTable AddCart(Cart cart)
        {
            try
            {
                return cartRepository.AddCart(cart);
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
                return cartRepository.deletecart(cart);
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
                return cartRepository.GetbyId(cart);
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
                return cartRepository.UpdateCart(cart);
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
                return cartRepository.gellall();
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
                return cartRepository.Delete();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
