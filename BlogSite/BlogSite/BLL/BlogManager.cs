using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BlogSite.DAL;
using BlogSite.Model;

namespace BlogSite.BLL
{
    public class BlogManager
    {
        BlogGatway blogGatway = new BlogGatway();

        public List<Post> GetMostViewedPost()
        {
            return blogGatway.GetMostViewedPost();
        }
        public List<Post> GetMostRecentPost()
        {
            return blogGatway.GetMostRecentPost();
        }
         public List<Post> GetSearchPost(string search)
         {
             return blogGatway.GetSearchPost(search);
         }

        public List<Post> GetMyPostPublished(int uid)
        {
            return blogGatway.GetMyPostPublished(uid);
        }
        public List<Post> GetMyPostUnPublished(int uid)
        {
            return blogGatway.GetMyPostUnPublished(uid);
        }
    }
}