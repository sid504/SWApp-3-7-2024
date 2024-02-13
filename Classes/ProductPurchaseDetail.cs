using System;
using System.Collections.Generic;

namespace WSWApp.Classes
{
    public class Metric
    {
        public int ID { get; set; }
        public string MetricName { get; set; }
    }
    public class ProductPurchaseOrder
    {
        public int ProductPurchaseOrderID { get; set; }
        public int ProductID { get; set; }
        public int CustomerID { get; set; }
        public DateTime ProductPurchaseDate { get; set; }
        public DateTime ProductSoldDate { get; set; }
        public double VolumePurchased { get; set; }
        public string Metric { get; set; }
        public bool IsSold { get; set; }
        public bool IsDelivered { get; set; }
        public double InitialPrice { get; set; }
        public double TodayPrice { get; set; }
        public double SoldPrice { get; set; }
        public double Profit { get; set; }
    }
    public class StockPriceMoment
    {
        public int StockPriceID { get; set; }
        public int ProductID { get; set; }
        public double StockPrice { get; set; }
        public DateTime UpdatedDateTime { get; set; }

    }
}