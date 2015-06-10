using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogSite.BLL;
using BlogSite.Model;

namespace BlogSite.Pages
{
    public partial class BlogPost : System.Web.UI.Page
    {
        BlogPageManager blogPageManager = new BlogPageManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            int pid=0;
            if (Request["pid"]!=null)
            {
                try
                {
                    pid = Convert.ToInt32(Request["pid"].ToString());
                }
                catch (Exception)
                {
                    Response.Redirect("blog.aspx");
                }
            }
            if (pid>0)
            {
                blogPageManager.IncreaseHitCount(pid);
                Post post = blogPageManager.GetPostByPid(pid);
                Posttitle.InnerText = post.PostTitle;
                img.Src = "../images/user/" + post.UserImage;
                postBody.InnerHtml = post.PostBody;
                name.InnerText = post.Name;
                dateOfPost.InnerText = post.DateOfPost.ToLongDateString();
                totalComments.InnerText = post.TotalComments.ToString();
                hitCount.InnerText = post.HitCount.ToString();
            }
        }
    }
}