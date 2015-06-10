<%@ Page Title="" Language="C#" MasterPageFile="~/Master/blogSiteMaster.Master" AutoEventWireup="true" CodeBehind="blog_post.aspx.cs" Inherits="BlogSite.Pages.BlogPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Container" runat="server">
    <div id="tooplate_main">
        <div id="tooplate_content">
            <div id="fullpost">
                <img runat="server" id="img" src="../images/user/0.jpg" class="image_wrapper image_fl" alt="Image" />
                <p><span>Posted <a runat="server" id="name" href='#'></a></span> | <a runat="server" id="dateOfPost" href='#'></a> | <span>Viewed <a runat="server" id="hitCount" href='#'>0</a></span> | <span><a runat="server" id="totalComments" href='#'>0</a> Comments</span></p>
                <h2 runat="server" id="Posttitle">Lorem ipsum dolor sit amet</h2>
                <div runat="server" id="postBody"></div>
                <div class="cleaner h30"></div>

                <h3>Comments</h3>

                <div id="comment_section">
                    <ol class="comments first_level">

                        <li>
                            <div class="comment_box commentbox1">

                                <div class="gravatar">
                                    <img src="../images/avator.png" alt="author" />
                                </div>

                                <div class="comment_text">
                                    <div class="comment_author">Juvin<span class="date">November 7th, 2048</span><span class="time">1:29 pm</span></div>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum ornare nulla ac laoreet. Phasellus mattis tellus eu risusLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum ornare nulla ac laoreet. Phasellus mattis tellus eu risus</p>
                                    <div class="btn_more float_r"><a href="#"><span>+</span> Reply</a></div>
                                </div>
                                <div class="cleaner"></div>
                            </div>

                        </li>

                        <li>
                            <ol class="comments">

                                <li>
                                    <div class="comment_box commentbox2">

                                        <div class="gravatar">
                                            <img src="../images/avator.png" alt="author" />
                                        </div>
                                        <div class="comment_text">
                                            <div class="comment_author">Valentine<span class="date">November 9th, 2048</span><span class="time">2:09 am</span></div>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                                            <div class="btn_more float_r"><a href="#"><span>+</span> Reply</a></div>
                                        </div>

                                        <div class="cleaner"></div>
                                    </div>
                                </li>

                                <li>

                                    <ol class="comments">

                                        <li>
                                            <div class="comment_box commentbox1">

                                                <div class="gravatar">
                                                    <img src="../images/avator.png" alt="author" />
                                                </div>
                                                <div class="comment_text">
                                                    <div class="comment_author">Thomas<span class="date">November 9th, 2048</span><span class="time">4:21 am</span></div>
                                                    <p>Suspendisse sed nisi magna, sed molestie nibh. Nam non diam at augue lacinia condimentum. </p>
                                                    <div class="btn_more float_r"><a href="#"><span>+</span> Reply</a></div>
                                                </div>

                                                <div class="cleaner"></div>
                                            </div>

                                        </li>

                                    </ol>

                                </li>
                            </ol>

                        </li>

                        <li>
                            <div class="comment_box commentbox1">


                                <div class="gravatar">
                                    <img src="../images/avator.png" alt="author" />
                                </div>
                                <div class="comment_text">
                                    <div class="comment_author">Paul<span class="date">November 12th, 2048</span><span class="time">5:20 pm</span></div>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum ornare nulla ac laoreet. Phasellus mattis tellus eu risus</p>
                                    <div class="btn_more float_r"><a href="#"><span>+</span> Reply</a></div>
                                </div>

                                <div class="cleaner"></div>
                            </div>

                        </li>

                        <li>
                            <div class="comment_box commentbox1">

                                <div class="gravatar">
                                    <img src="../images/avator.png" alt="author" />
                                </div>
                                <div class="comment_text">
                                    <div class="comment_author">Eric<span class="date">November 13th, 2048</span><span class="time">11:29 am</span></div>
                                    <p>Sed volutpat urna vitae sapien sodales pellentesque.</p>
                                    <div class="btn_more float_r"><a href="#"><span>+</span> Reply</a></div>
                                </div>

                                <div class="cleaner"></div>
                            </div>

                        </li>

                    </ol>
                </div>
                <!-- end of comment -->

                <div id="comment_form">
                    <h3>Leave your comment</h3>

                    <form action="#" method="get">
                        <div class="form_row">
                            <label>Name (* required )</label><br />
                            <input type="text" name="name" />
                        </div>
                        <div class="form_row">
                            <label>Email  (* required)</label><br />
                            <input type="text" name="name" />
                        </div>
                        <div class="form_row">
                            <label>Comment</label><br />
                            <textarea name="comment" rows="" cols=""></textarea>
                        </div>
                        <input type="submit" name="Submit" value="Submit" class="submit_btn" />
                    </form>
                    <div class="cleaner h40"></div>
                </div>

            </div>

            <!-- end of content -->
            <div id="sidebar">
                <h3>Categories</h3>
                <ul class="tmo_list">
                    <li><a href="index.html">Curabitur sed</a></li>
                    <li><a href="index.html">Praesent adipiscing</a></li>
                    <li><a href="index.html">Duis sed justo</a></li>
                    <li><a href="index.html">Mauris vulputate</a></li>
                    <li><a href="index.html">Nam auctor</a></li>
                    <li><a href="index.html">Aliquam quam</a></li>
                </ul>

                <div class="cleaner h30"></div>

                <h3>Archive</h3>
                <ul class="tmo_list">
                    <li><a href="index.html">November, 2048</a></li>
                    <li><a href="index.html">October, 2048</a></li>
                    <li><a href="index.html">September, 2048</a></li>
                    <li><a href="index.html">August, 2048</a></li>
                    <li><a href="index.html">July, 2048</a></li>
                    <li><a href="index.html">June, 2048</a></li>
                    <li><a href="index.html">May, 2048</a></li>
                    <li><a href="index.html">April, 2048</a></li>
                    <li><a href="index.html">March, 2048</a></li>
                </ul>
            </div>
            <!-- end of Side Bar -->
        </div>



        <div class="cleaner"></div>
    </div>
    <!-- end of tooplate_main -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
