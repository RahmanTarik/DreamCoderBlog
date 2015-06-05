using System;
using System.Configuration;
using BlogSite.BLL;

namespace BlogSite.Master
{
    public partial class BlogSiteMaster : System.Web.UI.MasterPage
    {
        LoginManager loginManager = new LoginManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signUpButton_Click(object sender, EventArgs e)
        {
            string fname = Request.Form["fname"];
            string lname = Request.Form["lname"];
            string email = Request.Form["rEmail"];
            string password = Request.Form["rPassword"];
            
        }

        protected void signInButton_Click(object sender, EventArgs e)
        {
            string email = Request.Form["email"];
            string password = Request.Form["password"];
            if (String.IsNullOrEmpty(email) || String.IsNullOrEmpty(password))
            {
                
            }
            
        }
    }
}