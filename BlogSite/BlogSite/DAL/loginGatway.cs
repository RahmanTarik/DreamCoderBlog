using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using BlogSite.Model;

namespace BlogSite.DAL
{
    public class LoginGatway
    {
        private readonly string _connectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        public UserInfo CheckLogin(Login login)
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            string query = "select lid from login where email='"+login.Email+"' and password= '"+login.Password+"'";
            SqlCommand command = new SqlCommand(query, connection);
            int lid = 0;
            UserInfo userInfo = new UserInfo();
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                lid =  Convert.ToInt32(reader["lid"].ToString());
                reader.Close();
                string query2 = "select * from userInfo where lid=" + lid;
                SqlCommand command2 = new SqlCommand(query2, connection);
                SqlDataReader reader2 = command2.ExecuteReader();
                while (reader2.Read())
                {
                    userInfo.Uid = Convert.ToInt32(reader2["uid"].ToString());
                    userInfo.UserName = reader2["lName"].ToString();
                    userInfo.UserImage = reader2["image"].ToString();
                    userInfo.About = reader2["about"].ToString();
                }
            }
            connection.Close();
            return userInfo;
        }
    }
}