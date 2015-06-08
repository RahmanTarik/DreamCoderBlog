using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using BlogSite.Model;

namespace BlogSite.DAL
{
    public class RegistrationGatway
    {
        private readonly string _connectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        public bool CheckEmail(string email)
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            string query = "select * from login where email='"+email+"'";
            SqlCommand command = new SqlCommand(query,connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                connection.Close();
                return true;
            }
            connection.Close();
            return false;
        }

        public bool Insert(Registration registration)
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            string loginQuery = "INSERT INTO login (email,password) values ('" + registration.Email + "','" + registration.Password + "')";
            SqlCommand commandLogin = new SqlCommand(loginQuery, connection);

            connection.Open();
            int rowAffected = commandLogin.ExecuteNonQuery();
            connection.Close();
            if (rowAffected>0)
            {
                int lid = GetLidByEmail(registration.Email);
                if (lid>0)
                {
                    if (InsertToUserInfo(registration, lid)>0)
                    {
                        return true;
                    }
                    else
                    {
                        DeleteByEmail(registration.Email);
                        return false;
                    }
                    
                }
                
            }
           
            return false;
        }

        private int InsertToUserInfo(Registration registration,int lid)
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            string registrationQuery = "INSERT INTO userInfo (fname,lname,lid) values ('" + registration.Fname + "','" + registration.Lname + "',"+lid+")";
            SqlCommand commandRegistration = new SqlCommand(registrationQuery, connection);
            connection.Open();
            int rowAffected = commandRegistration.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }

        private int GetLidByEmail(String email)
        {
            int lid = 0;
            SqlConnection connection = new SqlConnection(_connectionString);
            string query = "select lid from login where email = '"+email+"'";
            SqlCommand command = new SqlCommand(query, connection);

            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    lid = Convert.ToInt32(reader["lid"].ToString());
                }
                connection.Close();
                return lid;
            }
            catch (Exception)
            {

                return 0;
            }
        }

        private int DeleteByEmail(string email)
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            string query = "delete from login where email = '" + email+"'";
            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }
    }
}