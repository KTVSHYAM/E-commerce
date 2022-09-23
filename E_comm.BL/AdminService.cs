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
    public class Adminservice
    {
        AdminRepository adminRepository;
        public Adminservice()
        {
            adminRepository = new AdminRepository();
        }
        public DataTable AdminLogin(Admin admin)
        {
            try
            {
                return adminRepository.AdminLogin(admin);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
