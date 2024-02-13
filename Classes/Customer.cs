using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WSWApp.Classes
{
    public class Customer
    {
        public int CustID { get; set; }
        public string CustName { get; set; }
        public bool Gender { get; set; }
        public string Aadhar { get; set; }
        public string PAN { get; set; }
        public string MobileNumber { get; set; }
        public string EmailID { get; set; }
        public bool IsAdmin { get; set; }

    }
   
}