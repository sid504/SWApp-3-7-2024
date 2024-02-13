using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WSWApp.Classes;

namespace WSWApp.CustomerPanel
{
    public partial class CustomerDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string percentage = GetProgressbarInfo();
            lblPercentage.InnerText = Convert.ToInt32(percentage) < 100 ? Convert.ToInt32(percentage) + "% Done" : "Matured";
            string color = Convert.ToInt32(percentage) < 100 ? "Red" : "Green";
            progressBar.Attributes.Add("style", "width:"+percentage+"%;background-color:"+color+";");
            progressBar.Attributes.Add("aria-valuenow", percentage);
            
        }

        //Get progress bar process information
        private string GetProgressbarInfo()
        {
            Metric metric = new Metric { ID = 1, MetricName = "KG" };
            Customer customer = new Customer { CustID = 1, CustName = "kalyan" };
            int LeapYearDays = 366;
            List<Product> products = new List<Product>
            {
                new Product{ID=1,ProductName="Red Sandle Wood",ProductDesc="RedSandle",TotalProductVolume=10,AvailableProductVolume=5,MetricID=1 }
            };
            List<ProductPurchaseOrder> lstPOD = new List<ProductPurchaseOrder>
            {
                new ProductPurchaseOrder{ProductPurchaseOrderID=1,CustomerID=1,ProductID=1,InitialPrice=10,IsDelivered=false,IsSold=false,Metric=metric.MetricName,ProductPurchaseDate=DateTime.Parse("01/01/2024"),TodayPrice=100,VolumePurchased=5}
            };

            DateTime purchasedStartDate = DateTime.Now;
            DateTime currentDate = DateTime.Now;
            double remainingDaystoMature = DateTime.IsLeapYear(DateTime.Now.Year)
                ? Convert.ToDouble(((DateTime.Now - lstPOD.Where(x => x.CustomerID == customer.CustID).OrderBy(x => x.ProductPurchaseDate).FirstOrDefault().ProductPurchaseDate).Days)) / (LeapYearDays) * 100
                : Convert.ToDouble(((DateTime.Now - lstPOD.Where(x => x.CustomerID == customer.CustID).OrderBy(x => x.ProductPurchaseDate).FirstOrDefault().ProductPurchaseDate).Days)) /(LeapYearDays-1)*100;
            return (Math.Round(remainingDaystoMature)).ToString();
        }
    }
}