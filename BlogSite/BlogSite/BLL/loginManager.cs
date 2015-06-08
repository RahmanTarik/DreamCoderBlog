using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BlogSite.DAL;
using BlogSite.Model;

namespace BlogSite.BLL
{
    public class LoginManager
    {
        LoginGatway _loginGatway = new LoginGatway();

        public UserInfo CheckLogin(Login login)
        {
            return _loginGatway.CheckLogin(login);
        }
        
    }
}