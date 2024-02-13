using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSWApp.MainPages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(txtEmail.Text == "admin" && txtPassword.Text == "admin")
            {
                Response.Redirect("~/AdminPanel/AdminDashboard.aspx");
                
            }
            else 
            {
                Response.Redirect("~/CustomerPanel/Shop.aspx");
            }
        }
    }
}