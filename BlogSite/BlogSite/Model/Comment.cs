using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BlogSite.Model
{
    public class Comment
    {
        public int Cid { get; set; }
        public string UserComment { get; set; }
        public int Pid { get; set; }
        public int Uid { get; set; }
        public DateTime DateOfComment { get; set; }
        public string UserName { get; set; }
        public string UserImage { get; set; }
    }
}