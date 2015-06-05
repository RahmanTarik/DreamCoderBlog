<%@ Page Title="" Language="C#" MasterPageFile="~/Master/blogSiteMaster.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="BlogSite.Pages.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../css/jquery.lightbox-0.5.css" />
    <link rel="stylesheet" type="text/css" href="../css/jquery.lightbox-0.5.css" media="screen" />

    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/jquery.lightbox-0.5.js"></script>

    <script type="text/javascript">
        $(function () {
            $('#map a').lightBox();
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Container" runat="server">
    <div id="tooplate_main">

        <div id="tooplate_content">

            <h2>Contact Information</h2>
            <p><em>Eugiat luctus malesuada non, aliquet et justo. Nunc sollicitudin, enim ut pretium fringilla, elit mi vehicula nulla, ac faucibus nibh felis sit amet ante Nam elementum vulputate felis. Validate <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>XHTML</strong></a> and <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong>CSS</strong></a>.</em></p>
            <div class="h30"></div>
            <div class="col_w420 float_l">
                <div id="contact_form">

                    <h3>Quick Contact Form</h3>

                    <form method="post" name="contact" action="#">

                        <label for="author">Name:</label>
                        <input type="text" id="author" name="author" class="required input_field" />
                        <div class="cleaner h10"></div>

                        <label for="email">Email:</label>
                        <input type="text" class="validate-email required input_field" name="email" id="email" />
                        <div class="cleaner h10"></div>

                        <label for="subject">Subject:</label>
                        <input type="text" class="validate-subject required input_field" name="subject" id="subject" />
                        <div class="cleaner h10"></div>

                        <label for="text">Message:</label>
                        <textarea id="text" name="text" rows="0" cols="0" class="required"></textarea>
                        <div class="cleaner h10"></div>

                        <input type="submit" value="Send" id="submit" name="submit" class="submit_btn float_l" />
                        <input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" />

                    </form>

                </div>
            </div>

            <div class="col_w420 float_r">
                <h3>Our Location</h3>
                <div id="map">
                    <a href="images/map_big.jpg" title="Our Location">
                        <img width="300" height="150" src="../images/map_thumb.jpg" alt="Our Location" class="image_wrapper" />
                    </a>
                </div>
                <div class="cleaner h30"></div>

                <h3>Mailing Address</h3>
                <h6>Company Name</h6>
                101-300 Nulla aliquam dictum,
                <br />
                Etiam a nulla ligula, 10110<br />
                Nam rhoncus, diam a mollis tempor
                <br />
                <br />
                <strong>Phone:</strong> 020-054-1520<br />
                <strong>Email:</strong> <a href="mailto:info@company.com">info@company.com</a>
            </div>


            <div class="cleaner"></div>
        </div>

        <div class="cleaner"></div>
    </div>
    <!-- end of tooplate_main -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
