using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BlogSite.Model;
using BlogSite.DAL;

namespace BlogSite.BLL
{
    public class RegistartionManager
    {
        RegistrationGatway registrationGatway = new RegistrationGatway();

        public string Insert(Registration registration)
        {
            string message;
            if (!registrationGatway.CheckEmail(registration.Email))
            {
                if (registrationGatway.Insert(registration))
                {
                    message = "Registration Successfull";
                }
                else
                {
                    message = "Registration Failed";
                }
               
            }
            else
            {
                message = "This Email Already Registered. Please Sign In";
            }
            return message;
        }
    }
}