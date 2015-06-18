using System;
using System.Collections.Generic;
using System.Globalization;
using BlogSite.BLL;
using BlogSite.Model;

namespace BlogSite.Pages
{
    public partial class BlogPost : System.Web.UI.Page
    {
        readonly BlogPageManager _blogPageManager = new BlogPageManager();
        readonly CommentManager _commentManager = new CommentManager();
        int _pid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBlog();
            }
            else
            {
                LoadComment();
            }
        }

        protected void commentButton_Click(object sender, EventArgs e)
        {
            errorMessage.InnerHtml = "";
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
                    comment.Pid = _pid;
                    comment.UserComment = commentTextBox.Value;
                    if (_commentManager.InsertComment(comment))
                    {
                        LoadComment();
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
            commentTextBox.Value = String.Empty;

        }

        private void LoadBlog()
        {
            if (Request["pid"] != null)
            {
                try
                {
                    _pid = Convert.ToInt32(Request["pid"]);
                    ViewState["pid"] = _pid;
                }
                catch (Exception)
                {
                    Response.Redirect("blog.aspx");
                }
            }
            if (_pid > 0)
            {
                _blogPageManager.IncreaseHitCount(_pid);
                Post post = _blogPageManager.GetPostByPid(_pid);
                Posttitle.InnerText = post.PostTitle;
                img.Src = "../images/user/" + post.UserImage;
                postBody.InnerHtml = post.PostBody;
                name.InnerText = post.Name;
                dateOfPost.InnerText = post.DateOfPost.ToLongDateString();
                totalComments.InnerText = post.TotalComments.ToString(CultureInfo.InvariantCulture);
                hitCount.InnerText = post.HitCount.ToString(CultureInfo.InvariantCulture);
                if (post.Status.Equals("s"))
                {
                    publishButton.Style["display"] = "inline";
                }
                else
                {
                    publishButton.Style["display"] = "none";
                }
                LoadComment();
            }
        }

        private void LoadComment()
        {
            _pid = (int) ViewState["pid"];
            List<Comment> comments = _commentManager.GetCommentByPid(_pid);
            string innerHtml = "";
            foreach (Comment comment in comments)
            {
                innerHtml += @"<li>
                            <div class='comment_box commentbox1'>
                                <div class='gravatar'>
                                    <img src='../images/user/" + comment.UserImage + @"' alt='author' />
                                </div>
                                <div class='comment_text'>
                                    <div class='comment_author'>" + comment.UserName + @"<span class='date'>" + comment.DateOfComment + @"</span></div>
                                    <p>" + comment.UserComment + @"</p>
                                </div>
                                <div class='cleaner'></div>
                            </div>
                        </li>";
            }
            commentInput.InnerHtml = innerHtml;
        }

        protected void publishButton_Click(object sender, EventArgs e)
        {
            if (_blogPageManager.UpdatePostStatus(_pid))
            {
                LoadBlog();
            }
        }
    }
}