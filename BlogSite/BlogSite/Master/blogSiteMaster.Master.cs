using System;
using BlogSite.BLL;
using BlogSite.Model;

namespace BlogSite.Master
{
    public partial class BlogSiteMaster : System.Web.UI.MasterPage
    {
        LoginManager loginManager = new LoginManager();
        RegistartionManager registrationManager = new RegistartionManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void signUpButton_Click(object sender, EventArgs e)
        {
            string fname = Request.Form["fname"];
            string lname = Request.Form["lname"];
            string email = Request.Form["rEmail"];
            string password = Request.Form["rPassword"];
            if (!String.IsNullOrEmpty(email) || !String.IsNullOrEmpty(password) || !String.IsNullOrEmpty(lname) || !String.IsNullOrEmpty(fname))
            {
                Registration registration = new Registration();
                registration.Email = email;
                registration.Password = password;
                registration.Fname = fname;
                registration.Lname = lname;
                String message = registrationManager.Insert(registration);
                test.InnerText = message;
            }
            
        }

        protected void signInButton_Click(object sender, EventArgs e)
        {
            string email = Request.Form["email"];
            string password = Request.Form["password"];
            if (!String.IsNullOrEmpty(email) || !String.IsNullOrEmpty(password))
            {
                Login login = new Login();
                login.Email = email;
                login.Password = password;
                UserInfo userInfo = loginManager.CheckLogin(login);
                if (userInfo.Uid>0)
                {
                    Session["userInfo"] = userInfo;
                }
            }
            
        }
        protected void logOutButton_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();

        }
    }
}