using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WSWApp.Classes;

namespace WSWApp.AdminPanel
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[5] { new DataColumn("ID"), new DataColumn("ProductName"), new DataColumn("ProductDesc"), new DataColumn("TotalProductVolume"), new DataColumn("AvailableProductVolume") });
                dt.Rows.Add(1, "WSW", "White sandalwood",50,10);
                dt.Rows.Add(2, "WSO", "Sandalwood oil",40,20);
                dt.Rows.Add(3, "RSO", "Red Sandalwood",90,50);
                ViewState["dt"] = dt;
                this.BindGrid();
            }
        }

        protected void BindGrid()
        {
            GridView1.DataSource = ViewState["dt"] as DataTable;
            GridView1.DataBind();
        }
        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }
        protected void OnUpdate(object sender, EventArgs e)
        {
            GridViewRow row = (sender as Button).NamingContainer as GridViewRow;
            string name = (row.Cells[1].Controls[0] as TextBox).Text;
            string Desc = (row.Cells[2].Controls[0] as TextBox).Text;
            string Total = (row.Cells[3].Controls[0] as TextBox).Text;
            string Available = (row.Cells[4].Controls[0] as TextBox).Text;
            DataTable dt = ViewState["dt"] as DataTable;
            dt.Rows[row.RowIndex]["ProductName"] = name;
            dt.Rows[row.RowIndex]["ProductDesc"] = Desc;
            dt.Rows[row.RowIndex]["TotalProductVolume"] = Total;
            dt.Rows[row.RowIndex]["AvailableProductVolume"] = Available;
            ViewState["dt"] = dt;
            GridView1.EditIndex = -1;
            this.BindGrid();
        }
        protected void OnCancel(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            DataTable dt = ViewState["dt"] as DataTable;
            if (!string.IsNullOrEmpty(txtProductName.Text))
            {
                dt.Rows.Add(dt.Rows.Count + 1, txtProductName.Text, txtPD.Text, !string.IsNullOrEmpty(txtTV.Text) ? Convert.ToInt32(txtTV.Text) : 0, !string.IsNullOrEmpty(txtTAV.Text) ? Convert.ToInt32(txtTAV.Text) : 0);
                ViewState["dt"] = dt;
                this.BindGrid();
                txtPD.Text = "";
                txtProductName.Text = "";
                txtTAV.Text = "";
                txtTV.Text = "";
                Response.Write("<script>alert('Inserted successfully')</script>");
            }
            
        }
    }
}