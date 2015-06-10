using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BlogSite.DAL;
using BlogSite.Model;

namespace BlogSite.BLL
{
    public class BlogPageManager
    {
        BlogPageGatway blogPageGatway = new BlogPageGatway();

        public bool IncreaseHitCount(int pid)
        {
            return blogPageGatway.IncreaseHitCount(pid);
        }

        public Post GetPostByPid(int pid)
        {
            return blogPageGatway.GetPostByPid(pid);
        }
    }
}