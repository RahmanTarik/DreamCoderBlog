using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using BlogSite.Model;

namespace BlogSite.DAL
{
    public class BlogGatway
    {
        private readonly string _connectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        public List<Post> GetMostViewedPost()
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            string query = "select * from mostViewedPost";
            SqlCommand command = new SqlCommand(query, connection);
            List<Post> posts = new List<Post>();
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Post post = new Post();
                post.PostId = Convert.ToInt32(reader["pid"].ToString());
                post.PostTitle = reader["title"].ToString();
                post.PostBody = reader["post"].ToString();
                post.Name = reader["fName"]+" "+ reader["lName"];
                post.DateOfPost = Convert.ToDateTime(reader["dateOfPost"].ToString());
                post.UserImage = reader["image"].ToString();
                post.HitCount = Convert.ToInt32(reader["hitCount"].ToString());
                post.TotalComments = GetTotalComments(post.PostId);
                posts.Add(post);
            }
            connection.Close();
            return posts;
        }
        public List<Post> GetMostRecentPost()
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            string query = "select * from mostRecentPost";
            SqlCommand command = new SqlCommand(query, connection);
            List<Post> posts = new List<Post>();
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Post post = new Post();
                post.PostId = Convert.ToInt32(reader["pid"].ToString());
                post.PostTitle = reader["title"].ToString();
                post.PostBody = reader["post"].ToString();
                post.Name = reader["fName"] + " " + reader["lName"];
                post.DateOfPost = Convert.ToDateTime(reader["dateOfPost"].ToString());
                post.UserImage = reader["image"].ToString();
                post.HitCount = Convert.ToInt32(reader["hitCount"].ToString());
                post.TotalComments = GetTotalComments(post.PostId);
                posts.Add(post);
            }
            connection.Close();
            return posts;
        }

        public int GetTotalComments(int pid)
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            string query = "select COUNT(c.cid) as total from comment as c where c.pid="+pid;
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

        public List<Post> GetSearchPost(string search)
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            SqlCommand command = new SqlCommand();
            command.CommandType=CommandType.StoredProcedure;
            command.CommandText = "search";
            command.Parameters.Add("@search", search);
            command.Connection = connection;
            List<Post> posts = new List<Post>();
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Post post = new Post();
                post.PostId = Convert.ToInt32(reader["pid"].ToString());
                post.PostTitle = reader["title"].ToString();
                post.PostBody = reader["post"].ToString();
                post.Name = reader["fName"] + " " + reader["lName"];
                post.DateOfPost = Convert.ToDateTime(reader["dateOfPost"].ToString());
                post.UserImage = reader["image"].ToString();
                post.HitCount = Convert.ToInt32(reader["hitCount"].ToString());
                post.TotalComments = GetTotalComments(post.PostId);
                posts.Add(post);
            }
            connection.Close();
            return posts;
        }
        public List<Post> GetMyPostPublished( int uid)
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "myPostPublish";
            command.Parameters.Add("@uid", uid);
            command.Connection = connection;
            List<Post> posts = new List<Post>();
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Post post = new Post();
                post.PostId = Convert.ToInt32(reader["pid"].ToString());
                post.PostTitle = reader["title"].ToString();
                post.PostBody = reader["post"].ToString();
                post.Name = reader["fName"] + " " + reader["lName"];
                post.Status = reader["status"].ToString();
                post.DateOfPost = Convert.ToDateTime(reader["dateOfPost"].ToString());
                post.UserImage = reader["image"].ToString();
                post.HitCount = Convert.ToInt32(reader["hitCount"].ToString());
                post.TotalComments = GetTotalComments(post.PostId);
                posts.Add(post);
            }
            connection.Close();
            return posts;
        }
        public List<Post> GetMyPostUnPublished(int uid)
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "myPostUnPublish";
            command.Parameters.Add("@uid", uid);
            command.Connection = connection;
            List<Post> posts = new List<Post>();
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Post post = new Post();
                post.PostId = Convert.ToInt32(reader["pid"].ToString());
                post.PostTitle = reader["title"].ToString();
                post.PostBody = reader["post"].ToString();
                post.Name = reader["fName"] + " " + reader["lName"];
                post.Status = reader["status"].ToString();
                post.DateOfPost = Convert.ToDateTime(reader["dateOfPost"].ToString());
                post.UserImage = reader["image"].ToString();
                post.HitCount = Convert.ToInt32(reader["hitCount"].ToString());
                post.TotalComments = GetTotalComments(post.PostId);
                posts.Add(post);
            }
            connection.Close();
            return posts;
        }
    }
}