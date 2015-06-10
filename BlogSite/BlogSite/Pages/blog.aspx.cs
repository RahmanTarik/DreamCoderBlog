using System;
using System.Collections.Generic;
using System.Web.UI;
using BlogSite.BLL;
using BlogSite.Model;
using HtmlAgilityPack;

namespace BlogSite.Pages
{
    public partial class blog : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BlogManager blogManager = new BlogManager();
            List<Post> posts;
            if (postDropDown.SelectedItem.Value == "1")
            {
                posts = blogManager.GetMostRecentPost();
            }
            else
            {
                posts = blogManager.GetMostViewedPost();
            }
            string innerHtml = "";
            foreach (Post post in posts)
            {
                HtmlDocument doc = new HtmlDocument();
                doc.LoadHtml(post.PostBody);
                string body = doc.DocumentNode.InnerText;
                string postBody = body.Substring(0, 250);

                innerHtml += @"<div runat='server' class='post_box'><img src='../images/user/" + post.UserImage + @"' class='image_wrapper' alt='Image' />
                    <p><span>Posted <a href='#'>" + post.Name + @"</a></span> | <a href='#'>" + post.DateOfPost + @"</a> | <span>Viewed <a href='#'>" + post.HitCount + @"</a></span> | <span><a href='#'>" + post.TotalComments + @"</a> Comments</span></p>
                        <h2 class='postHead'>" + post.PostTitle + @"</h2>
                        <div>" + postBody + @"</div>
                        <a class='more float_r' href='blog_post.aspx?pid="+post.PostId+@"'>More</a>
                        <div class='cleaner'></div></div>";

            }
            postDiv.InnerHtml = innerHtml;
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(searchText.Value))
            {
                
            }
        }
    }
}