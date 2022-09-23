using E_comm.DataLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace E_comm.BL
{
    public class CategoryService
    {
        CategoryRepository repository;
        public CategoryService()
        {
            repository= new CategoryRepository();
        }
        public DataTable getall()
        {
            return repository.getall();
        }
    }
}
