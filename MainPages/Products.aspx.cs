using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSWApp.MainPages
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[5] {new DataColumn("ID"), new DataColumn("ProductImagePath"), new DataColumn("ProductName"),new DataColumn("Price"),new DataColumn("butURl")});
                dt.Rows.Add(1,"../Images/wsw.jpg", "Pure Sandalwood(100gm)","4,500","login.aspx");
                dt.Rows.Add(2,"../Images/wswoil.jpg", "Pure Sandalwood oil(10ml)","15,500", "login.aspx");
                dt.Rows.Add(3,"../Images/rsw.jpg", "Original Red Sandal Stick(100gm)","3,500", "login.aspx");
                ViewState["dt"] = dt;
                this.BindGrid();
            }
        }
        protected void BindGrid()
        {
            lstView.DataSource = ViewState["dt"] as DataTable;
            lstView.DataBind();
        }
    }
}