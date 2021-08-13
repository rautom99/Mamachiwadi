<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
     <style>
        .insize {
            height: 500px;
            width: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="slider">
        <div class="flexslider">
            <ul class="slides">
                <li>
                    <div class="slider-info">
                        <img src="MWImages/1 (33).jpg" class="img-responsive" alt="">
                    </div>
                </li>
                <li>
                    <div class="slider-info">
                        <img src="MWImages/1 (5).jpg" class="img-responsive" alt="">
                    </div>
                </li>
                <li>
                    <div class="slider-info">
                        <img src="MWImages/1 (22).jpg" class="img-responsive" alt="">
                    </div>
                </li>
                <li>
                    <div class="slider-info">
                        <img src="MWImages/1 (20).jpg" class="img-responsive" alt="">
                    </div>
                </li>
                <li>
                    <div class="slider-info">
                        <img src="MWImages/1 (13).jpg" class="img-responsive" alt="">
                    </div>
                </li>
            </ul>
        </div>
    </section>
    <!-- FlexSlider -->
    <script defer src="js/jquery.flexslider.js"></script>
    <script type="text/javascript">
        $(function () {
            SyntaxHighlighter.all();
        });
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide",
                start: function (slider) {
                    $('body').removeClass('loading');
                }
            });
        });
    </script>
    <!-- FlexSlider -->
    <!-- slider -->

    <div class="content">
        <div class="about-section" id="aboutus">
            <div class="container">
                <h3>Nearby <span>Places<span></h3>
                <div class="about-grids">
                    <div class="col-md-4 about-grid">
                        <img src="nearbyplaces/murudbeach.jpg" />
                        <h4>Murud<span>Beach</span></h4>
                        <p>
                            Murud is a village in the Ratnagiri district of Maharashtra, India. It is 420.92 hectares in size.
                        </p>
                    </div>
                    <div class="col-md-4 about-grid">
                        <img src="nearbyplaces/kashidbeach.jpg" />
                        <h4>Kashid<span>Beach</span></h4>
                        <p>Kashid is a beach town on the shores of the Arabian Sea, in the North Konkan region of Maharashtra, India.</p>
                    </div>
                    <div class="col-md-4 about-grid">
                        <img src="nearbyplaces/murudjanjirafort.jpg">
                        <h4>Murud Janjira<span>Fort</span></h4>
                        <p>Raja Ram Rao Patil was Koli Patil of Janjira Island who established and/or built this island in the 16th century for kolis to live peacefully away from pirates.</p>
                    </div>

                    <div class="clearfix"></div>
                </div>
                <a class="button hvr-shutter-in-vertical" href="nearbyplaces.aspx">View All</a>
            </div>
        </div>

        <div class="gallery-section" id="gallery">
            <h3>Gall<span>ery</span></h3>
            <div class="gallery-grids">
                <div class="col-md-4 gallery-grid">
                    <div class="gallery-grid1">
                        <a href="MWImages/1 (1).jpg" class="swipebox">
                            <img class="insize" src="MWImages/1 (1).jpg" /></a>
                    </div>
                    <div class="gallery-grid1">
                        <a href="MWImages/1 (2).jpg" class="swipebox">
                            <img class="insize" src="MWImages/1 (2).jpg" /></a>
                    </div>
                    <div class="gallery-grid1">
                        <a href="MWImages/1 (3).jpg" class="swipebox">
                            <img class="insize" src="MWImages/1 (3).jpg" /></a>
                    </div>
                </div>
                <div class="col-md-4 gallery-grid">
                    <div class="gallery-grid1">
                        <a href="MWImages/1 (4).jpg" class="swipebox">
                            <img class="insize" src="MWImages/1 (4).jpg" /></a>
                    </div>

                    <div class="gallery-grid1">
                        <a href="MWImages/1 (5).jpg" class="swipebox">
                            <img class="insize" src="MWImages/1 (5).jpg" /></a>
                    </div>
                    <div class="gallery-grid1">
                        <a href="MWImages/1 (6).jpg" class="swipebox">
                            <img class="insize" src="MWImages/1 (6).jpg" /></a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="col-md-4 gallery-grid">
                    <div class="gallery-grid1">
                        <a href="MWImages/1 (6).jpg" class="swipebox">
                            <img class="insize" src="MWImages/1 (6).jpg" /></a>
                    </div>
                    <div class="gallery-grid1">
                        <a href="MWImages/1 (7).jpg" class="swipebox">
                            <img class="insize" src="MWImages/1 (7).jpg" /></a>
                    </div>
                    <div class="gallery-grid1">
                        <a href="MWImages/1 (8).jpg" class="swipebox">
                            <img class="insize" src="MWImages/1 (8).jpg" /></a>
                    </div>
                </div>
            </div>
        </div>

        <%--<div class="gallery-section" id="gallery">
            <h3>Gall<span>ery</span></h3>
            <div class="gallery-grids">
                <div class="col-md-4 gallery-grid">
                    <div class="gallery-grid1">
                        <a href="MWImages/1 (1).jpg" class="swipebox">
                            <img src="MWImages/1 (1).jpg" /></a>
                    </div>
                    <div class="gallery-grid1">
                        <a href="MWImages/1 (2).jpg" class="swipebox">
                            <img src="MWImages/1 (2).jpg" /></a>
                    </div>
                    <div class="gallery-grid1">
                        <a href="MWImages/1 (3).jpg" class="swipebox">
                            <img src="MWImages/1 (3).jpg" /></a>
                    </div>
                </div>
                <div class="col-md-4 gallery-grid">
                    <div class="gallery-grid1">
                        <a href="MWImages/1 (4).jpg" class="swipebox">
                            <img src="MWImages/1 (4).jpg" /></a>
                    </div>

                    <div class="gallery-grid1">
                        <a href="MWImages/1 (5).jpg" class="swipebox">
                            <img src="MWImages/1 (5).jpg" /></a>
                    </div>
                    <div class="gallery-grid1">
                        <a href="MWImages/1 (6).jpg" class="swipebox">
                            <img src="MWImages/1 (6).jpg" /></a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="col-md-4 gallery-grid">
                    <div class="gallery-grid1">
                        <a href="MWImages/1 (6).jpg" class="swipebox">
                            <img src="MWImages/1 (6).jpg" /></a>
                    </div>
                    <div class="gallery-grid1">
                        <a href="MWImages/1 (7).jpg" class="swipebox">
                            <img src="MWImages/1 (7).jpg" /></a>
                    </div>
                    <div class="gallery-grid1">
                        <a href="MWImages/1 (8).jpg" class="swipebox">
                            <img src="MWImages/1 (8).jpg" /></a>
                    </div>
                </div>
            </div>
        </div>--%>

        <div class="contact-section" id="contact">
            <div class="container">
                <h3>contact <span>us</span></h3>
                <div class="contact-grid">
                    <div class="col-md-6 contactdetails-grid">
                        <h4>contact form</h4>
                        <h5>name <span>*</span></h5>
                        <asp:TextBox ID="txtname" runat="server" required></asp:TextBox>
                        <h5>email address <span>*</span></h5>
                        <asp:TextBox ID="txtemail" runat="server" required TextMode="Email"></asp:TextBox>
                        <h5>subject <span>*</span></h5>
                        <asp:TextBox ID="txtsubject" runat="server" required></asp:TextBox>
                        <h5>message <span>*</span></h5>
                        <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:Button ID="btnsend" runat="server" Text="Send" OnClick="btnsend_Click" />

                    </div>
                    <div class="col-md-6 contactdetails-grid1">
                        <div class="address">
                            <h4>Address</h4>
                            <p>Near Colaba Bazar, </p>
                            <p>Murud, Maharashtra 413510</p>

                            <p>Phone:9167831631, 099301 00092</p>
                            <p>Email: <a href="mailto:example@mail.com">mwadi51@gmail.com</a></p>

                        </div>
                        <div class="google-map">

                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d483671.1207951772!2d72.70853795739683!3d18.72311116697394!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be8438de64ed5bb%3A0x3caca525f8b657c0!2sMamachi%20wadi!5e0!3m2!1sen!2sin!4v1586346631202!5m2!1sen!2sin" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

