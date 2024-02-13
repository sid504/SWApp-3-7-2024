using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WSWApp.Classes
{
    public class Product
    {

        public int ID { get; set; }
        public string ProductName { get; set; }
        public string ProductDesc { get; set; }
        public double TotalProductVolume { get; set; }
        public double AvailableProductVolume { get; set; }
        public int MetricID { get; set; }
    }
}