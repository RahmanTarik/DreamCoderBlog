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
    public partial class bolger : System.Web.UI.Page
    {
        BlogerManager blogerManager = new BlogerManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Post post = GetPost();
            post.PostStatus = "s";
            if (blogerManager.InsertPost(post))
            {

            }
            else
            {

            }
        }

        protected void publishButton_Click(object sender, EventArgs e)
        {

            Post post = GetPost();
            post.PostStatus = "p";
            if (blogerManager.InsertPost(post))
            {

            }
            else
            {

            }
        }
        private Post GetPost()
        {

            string postTitle = Request.Form["postTitle"];
            string postBody = Request.Form["edit"];
            Post post = new Post();
            post.PostTitle = postTitle;
            post.PostBody = postBody;
            UserInfo userInfo = (UserInfo)Session["userInfo"];
            post.Uid = userInfo.Uid;
            return post;
        }
    }
}