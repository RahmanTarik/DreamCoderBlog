using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BlogSite.DAL;
using BlogSite.Model;

namespace BlogSite.BLL
{
    public class BlogerManager
    {
        BlogerGatway blogerGatway = new BlogerGatway();
        public bool InsertPost(Post post)
        {
            return blogerGatway.InsertPost(post) > 0;
        }
    }
}