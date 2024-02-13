using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSWApp.MainPages
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblYearfrom.Text = "2033-34";
            //Hero
            lblHeroHeading.Text = "IT'S JUST NOT A REAL ESTATE INVESTMENT IT'S A REAL INVESTMENT";
            lblHeroContext.Text = "Now you can Purchase/Hold/Trade/Sell sandlewood globally.";
            //why?
            lblWhyHeading.Text = "Why 1 must invest in Sandalwood?";
            lblWhyContext.Text = "Sandalwood is one of the very few tree species in the world which is the most widely accepted fragrant tree. The aromatic wood retains its fragrance for decades. Originated from INDIA, Only eight countries have favourable climatic conditions for the growth of white sandalwood out of 200+ countries in the world.";


        }

        protected void btnConnectNow_Click(object sender, EventArgs e)
        {
            RedirectToLoginPage();
        }

        protected void btnTradeNow_Click(object sender, EventArgs e)
        {
            RedirectToLoginPage();
        }
        private void RedirectToLoginPage()
        {
            Response.Redirect("~/MainPages/Login.aspx");
        }
    }
}