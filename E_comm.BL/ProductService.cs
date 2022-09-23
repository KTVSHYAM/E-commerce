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
    public class ProductService
    {
        ProductRepository productRepository;
        public ProductService()
        {
            productRepository = new ProductRepository();
        }
        public DataTable Getproduct(Products products)
        {
            try
            {
                return productRepository.Getproduct(products);
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
                return productRepository.GetproductbyId(products);
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
                productRepository.Add_Product(products);
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
                return productRepository.Delete_Product(products);
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
                return productRepository.Update_Product(products);
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
                return productRepository.GetAllProducts();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
