using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace E_comm.Entity
{
    public class Cart
    {
        public string ProductId { get; set; }
        public string Pname { get; set; }
        public string Pdesc { get; set; }
        public float Pprice { get; set; }
        public int Pquantity { get; set; }
        public string Pcategory { get; set; }
        public string Pimage { get; set; }
        public float Ptotalprice { get; set; }
        public string PUsername { get; set; }
    }
}
