using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using BlogSite.Model;

namespace BlogSite.DAL
{
    public class BlogerGatway
    {
        private readonly string _connectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        public int InsertPost(Post post)
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            string query = "insert into post (title,post,status,uid) values ('"+post.PostTitle+"','"+post.PostBody+"','"+post.PostStatus+"',"+post.Uid+")";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;

        }
    }

}