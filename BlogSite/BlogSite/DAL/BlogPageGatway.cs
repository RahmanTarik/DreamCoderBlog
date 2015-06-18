using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using BlogSite.Model;

namespace BlogSite.DAL
{
    public class BlogPageGatway
    {
        private readonly string _connectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        public bool IncreaseHitCount(int pid)
        {
            SqlConnection connection = null;
            try
            {
                connection = new SqlConnection(_connectionString);
                string query = "update post set hitCount=hitCount+1 where pid=" + pid;
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                int rowAffected = command.ExecuteNonQuery();
                connection.Close();
                return true;
            }
            catch (Exception)
            {
                if (connection!=null)
                {
                    connection.Close();
                }
                return false;
            }
        }

        public Post GetPostByPid(int pid)
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "GetPostByPid";
            command.Parameters.Add("@pid",pid);
            command.Connection = connection;
            Post post = new Post();
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                post.PostId = Convert.ToInt32(reader["pid"].ToString());
                post.PostTitle = reader["title"].ToString();
                post.PostBody = reader["post"].ToString();
                post.Name = reader["fName"] + " " + reader["lName"];
                post.DateOfPost = Convert.ToDateTime(reader["dateOfPost"].ToString());
                post.UserImage = reader["image"].ToString();
                post.Status = reader["status"].ToString();
                post.HitCount = Convert.ToInt32(reader["hitCount"].ToString());
                post.TotalComments = GetTotalComments(post.PostId);
            }
            connection.Close();
            return post;
        }

        public int GetTotalComments(int pid)
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            string query = "select COUNT(c.cid) as total from comment as c where c.pid=" + pid;
            SqlCommand command = new SqlCommand(query, connection);
            int totalComments = 0;

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                totalComments = Convert.ToInt32(reader["total"].ToString());
            }
            connection.Close();
            return totalComments;
        }

        public int UpdatePostStatus(int pid)
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            string query = "update post set status ='p' where pid="+pid;
            SqlCommand command = new SqlCommand(query,connection);

            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }
    }
}