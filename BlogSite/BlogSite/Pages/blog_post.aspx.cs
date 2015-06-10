using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogSite.BLL;
using BlogSite.Model;
using HtmlAgilityPack;

namespace BlogSite.Pages
{
    public partial class BlogPost : System.Web.UI.Page
    {
        BlogPageManager blogPageManager = new BlogPageManager();
        CommentManager commentManager = new CommentManager();
        int pid = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
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
                List<Comment> comments = commentManager.GetCommentByPid(pid);
                string innerHtml = "";
                foreach (Comment comment in comments)
                {
                    innerHtml += @"<li>
                            <div class='comment_box commentbox1'>
                                <div class='gravatar'>
                                    <img src='../images/user/" + comment.UserImage + @"' alt='author' />
                                </div>
                                <div class='comment_text'>
                                    <div class='comment_author'>"+comment.UserName+@"<span class='date'>"+comment.DateOfComment+@"</span></div>
                                    <p>"+comment.UserComment+@"</p>
                                </div>
                                <div class='cleaner'></div>
                            </div>
                        </li>";
                }
                commentInput.InnerHtml = innerHtml;
            }
        }

        protected void commentButton_Click(object sender, EventArgs e)
        {
            if (Session["userInfo"] == null)
            {
                errorMessage.InnerHtml = "Sign In First";
            }
            else
            {
                if (!string.IsNullOrEmpty(commentTextBox.Value))
                {
                    UserInfo userInfo = (UserInfo)Session["userInfo"];
                    Comment comment = new Comment();
                    comment.Uid = userInfo.Uid;
                    comment.Pid = pid;
                    comment.UserComment = commentTextBox.Value;
                    if (commentManager.InsertComment(comment))
                    {
                        
                    }
                    else
                    {
                        errorMessage.InnerHtml = "An Error Occured In Comment";
                    }
                }
                else
                {
                    errorMessage.InnerHtml = "Comment Can not be empty";
                }
                
            }
            
        }
    }
}