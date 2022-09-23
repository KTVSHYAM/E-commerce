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
    public class UserService
    {
        UserRepository userRepository;
        public UserService()
        {
            userRepository = new UserRepository();
        }
        public void AddUser(Users users)
        {
            try
            {
                userRepository.AddUser(users);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable Login(Users logn)
        {
            try
            {
                return userRepository.Login(logn);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable CheckUser(Users users)
        {
            try
            {
                return userRepository.CheckUser(users);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public DataTable Updateuser(Users users)
        {
            try
            {
                return userRepository.Updateuser(users);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
