<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactUs.ascx.cs" Inherits="Controls_ContactUs" %>
<cc2:msgBox ID="msgBox1" runat="server" Style="text-align: center" />
<!-- banner start -->
<!-- ================ -->
<div class="banner">
    <!-- google maps start -->
    <div id="map-canvas">

        <!-- google maps end -->
    </div>
</div>
<!-- banner end -->

<!-- page-intro start-->
<!-- ================ -->
<div class="page-intro">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ol class="breadcrumb">
                    <li><i class="fa fa-home pr-10"></i><a href="/p.aspx?p=home">Home</a></li>
                    <li class="active">Contact</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<!-- page-intro end -->
<!-- page-title start -->
<!-- ================ -->
<div style="background-color: #f1f1f1;">
    <!-- page-intro end -->
    <div style="background: url('images/Toyota/textbanner3.png') no-repeat; width: 360px; height: 96px;">
        <div class="coloback">
            <h2 class="page-title Title-color">Contact us</h2>

        </div>
    </div>
</div>

<!-- page-title end -->
<!-- main-container start -->
<!-- ================ -->
<section class="main-container">

    <div class="container">
        <div class="row">

            <!-- main start -->
            <!-- ================ -->
            <div class="main col-md-8">


                <p>Welcome to Elizade Nigeria Limited - We welcome feedbacks and comments.</p>
                <div class="alert alert-success hidden" id="contactSuccess">
                    <strong>Success!</strong> Your message has been sent to us.
                </div>
                <div class="alert alert-error hidden" id="contactError">
                    <strong>Error!</strong> There was an error sending your message.
                </div>
                <div class="contact-form">
                    <div id="contact-form" role="form">
                        <div class="form-group has-feedback">
                            <label for="name">Name*</label>
                            <input type="text" class="form-control" id="txtname" name="txtname" />
                            <i class="fa fa-user form-control-feedback"></i>
                        </div>
                        <div class="form-group has-feedback">
                            <label for="email">Email*</label>
                            <asp:TextBox CssClass="form-control" ID="txtemail" runat="server" />
                            <i class="fa fa-envelope form-control-feedback"></i>
                        </div>
                        <div class="form-group has-feedback">
                            <label for="subject">Subject*</label>
                            <asp:TextBox CssClass="form-control" ID="txtsubject" runat="server" />
                            <i class="fa fa-navicon form-control-feedback"></i>
                        </div>
                        <div class="form-group has-feedback">
                            <label for="message">Message*</label>
                            <asp:TextBox CssClass="form-control" Rows="6" TextMode="MultiLine" ID="txtmessage" runat="server"></asp:TextBox>
                            <i class="fa fa-pencil form-control-feedback"></i>
                        </div>
                        <asp:LinkButton ID="btnCommand" runat="server" CssClass="" Text="Send Message" OnClick="btnCommand_Click" />

                    </div>
                </div>
            </div>
            <!-- main end -->

            <!-- sidebar start -->
            <aside class="col-md-4">
                <div class="sidebar">
                    <div class="side vertical-divider-left">
                        <h3 class="title">ELIZADE-TOYOTA Plaza.</h3>
                        <ul class="list">
                            <li><strong></strong></li>
                            <li><i class="fa fa-home pr-10"></i>322A, Ikorodu Road, Anthony,
                                <br>
                                <span class="pl-20">Lagos State, </span>
                                <br>
                                <span class="pl-20">Nigeria </span></li>
                            <li><i class="fa fa-phone pr-10"></i>
                                <abbr title="Phone">P:</abbr>
                                (234) 1-7949496</li>
                            <li><i class="fa fa-mobile pr-10 pl-5"></i>Services: (234) 813 282 0697</span></li>
                            <li><i class="fa fa-mobile pr-10 pl-5"></i>Sales: 0700ELIZADE</span></li>
                            <li><i class="fa fa-mobile pr-10 pl-5"></i>Spare Parts (234) 708 242 4079</li>
                            <li><i class="fa fa-envelope pr-10"></i><a href="mailto:info@idea.com">elizade@elizade.net</a></li>
                        </ul>
                        <ul class="social-links colored circle large">
                            <li class="facebook"><a target="_blank" href="http://www.facebook.com"><i class="fa fa-facebook"></i></a></li>
                            <li class="twitter"><a target="_blank" href="http://www.twitter.com"><i class="fa fa-twitter"></i></a></li>
                            <li class="googleplus"><a target="_blank" href="http://plus.google.com"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </aside>
            <!-- sidebar end -->

        </div>
    </div>
</section>
<!-- main-container end -->

<!-- section start -->
<!-- ================ -->

<!-- section end -->
