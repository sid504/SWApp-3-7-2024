using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WSWApp.Classes;

namespace WSWApp.CustomerPanel
{
    public partial class Shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[6] { new DataColumn("ID"), new DataColumn("ProductName"), new DataColumn("ProductDesc"), new DataColumn("TotalProductVolume"), new DataColumn("AvailableProductVolume"), new DataColumn("ProductImagePath") });
                dt.Rows.Add(1, "Pure Sandalwood", "White sandalwood", 50, 10, "../Images/wsw.jpg");
                dt.Rows.Add(2, "Pure Sandalwood Oil", "Sandalwood oil", 40, 20, "../Images/wswoil.jpg");
                dt.Rows.Add(3, "Original Red SandalWood", "Red Sandalwood", 90, 50, "../Images/rsw.jpg");
                ViewState["dt"] = dt;
                this.BindGrid();
            }
        }
        protected void BindGrid()
        {
            lstView.DataSource = ViewState["dt"] as DataTable;
            lstView.DataBind();
        }

        protected void lstView_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "AddtoCart")
            {
                CustomerProductClickDetails(e.Item);
            }
            else if (e.CommandName == "Buy")
            {

            }
        }

        protected void CustomerProductClickDetails(DataListItem dlItem)
        {
            var ProductName = dlItem.FindControl("lbl");
            var Quantity = ((DropDownList)dlItem.FindControl("ddlQuantity")).SelectedItem.Value;
            var Metrics = ((DropDownList)dlItem.FindControl("ddlMetric")).SelectedItem.Value;
        }
    }
}