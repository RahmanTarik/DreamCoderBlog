using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BlogSite.Model
{
    public class Post
    {
        public int PostId { get; set; }
        public string PostTitle { get; set; }
        public string PostBody { get; set; }
        public string PostStatus { get; set; }
        public int Uid { get; set; }
    }
}