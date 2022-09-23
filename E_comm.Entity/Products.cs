using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace E_comm.Entity
{
    public class Products
    {
        public string PId { get; set; }
        public string PName { get; set; }
        public string PDescription { get; set; }
        public string PBrand { get; set; }
        public string PImage { get; set; }
        public string PCategory { get; set; }
        public float PPrice { get; set; }
        public int Pstock { get; set; }
    }
}
