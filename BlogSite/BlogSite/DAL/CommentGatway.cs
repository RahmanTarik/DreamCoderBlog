using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using BlogSite.Model;

namespace BlogSite.DAL
{
    public class CommentGatway
    {
        private readonly string _connectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        public List<Comment> GetCommentByPid(int pid)
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "GetCommentByPid";
            command.Parameters.Add("@pid", pid);
            command.Connection = connection;

            List<Comment> comments = new List<Comment>();
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Comment comment = new Comment();
                comment.Cid = Convert.ToInt32(reader["cid"].ToString());
                comment.Pid = pid;
                comment.Uid = Convert.ToInt32(reader["uid"].ToString());
                comment.UserComment = reader["comment"].ToString();
                comment.DateOfComment = Convert.ToDateTime(reader["dateOfComment"].ToString());
                comment.UserName = reader["fName"] +" "+ reader["lName"];
                comment.UserImage = reader["image"].ToString();
                comments.Add(comment);

            }
            connection.Close();
            return comments;
        }

        public int InsertComment(Comment comment)
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            string query = "insert into comment (uid,pid,comment) values (@uid,@pid,@comment)";
            SqlCommand command = new SqlCommand(query,connection);
            command.Parameters.Add("@uid", comment.Uid);
            command.Parameters.Add("@pid", comment.Pid);
            command.Parameters.Add("@comment", comment.UserComment);

            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }
    }
}