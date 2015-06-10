using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BlogSite.DAL;
using BlogSite.Model;

namespace BlogSite.BLL
{
    public class CommentManager
    {
        CommentGatway commentGatway=new CommentGatway();
        public List<Comment> GetCommentByPid(int pid)
        {
            return commentGatway.GetCommentByPid(pid);
        }

        public bool InsertComment(Comment comment)
        {
            return commentGatway.InsertComment(comment) > 0;
        }
    }
}