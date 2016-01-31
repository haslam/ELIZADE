<%@ Control Language="C#" AutoEventWireup="true" CodeFile="FAQ.ascx.cs" Inherits="Controls_faq" %>
<div class="banner-shadow">
</div>
<div class="back-shadow">
    <img src="images/Toyota/shadow.png" width="100%" style="padding: 0 10px;">
</div>

      <!-- page-intro start-->
      <!-- ================ -->
      <div class="page-intro">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <ol class="breadcrumb">
                <li><i class="fa fa-home pr-10"></i><a href="/p.aspx?p=home">Home</a></li>
                 <li class="active">Faq</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
      <!-- page-intro end -->
<section class="main-container">
    <cc2:msgBox ID="msgBox1" runat="server" Style="text-align: center" />
    <div class="container">
        <div class="row">

            <!-- sidebar start -->
            <!-- START OF FORM AREA -->
            <aside class="col-md-3">
                <div class="sidebar">
                    <div class="block clearfix">
                        <h3 class="title">Submit Your Question</h3>
                        <div class="separator"></div>
                        <div class="alert alert-success hidden" id="contactSuccess3">
                            <strong>Success!</strong> Your message has been sent to us.
                        </div>
                        <div class="alert alert-error hidden" id="contactError3">
                            <strong>Error!</strong> There was an error sending your message.
                        </div>
                        <div role="form" id="sidebar-form">
                            <div class="form-group has-feedback">
                                <label for="name3">Name</label>
                                <asp:TextBox CssClass="form-control" ID="txtname" runat="server" />
                                <i class="fa fa-user form-control-feedback"></i>
                            </div>
                            <div class="form-group has-feedback">
                                <label for="email3">Email address</label>
                                <asp:TextBox CssClass="form-control" ID="txtemail" runat="server" />
                                <i class="fa fa-envelope form-control-feedback"></i>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <asp:DropDownList runat="server"
                                    CssClass="form-control" ID="ddlcategory">
                                    <asp:ListItem Value="Support">Support</asp:ListItem>
                                    <asp:ListItem Value="healthplan">Health Plan</asp:ListItem>
                                    <asp:ListItem Value="General">Genral Enquiry</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group has-feedback">
                                <label for="message3">Message</label>
                                <asp:TextBox TextMode="MultiLine" CssClass="form-control" Rows="4" ID="txtmessage" runat="server"></asp:TextBox>
                                <i class="fa fa-pencil form-control-feedback"></i>
                            </div>
                            <asp:LinkButton ID="BtnCommand" runat="server" Text="Send Message" CssClass="btn btn-default" OnClick="BtnCommand_Click" />
                        </div>
                    </div>
                </div>
            </aside>
            <!-- sidebar end -->
            <!-- END OF FORM AREA -->

            <!-- main start -->
            <!-- START OF ACCORDION SECTION -->

            <!-- ================ -->
            <div class="main col-md-9">

                <!-- page-title start -->
                <!-- ================ -->
                <h1 class="page-title">Frequently Asked Questions</h1>
                <p>Do you have any vague question(s)? Kindly peruse through our FAQ to see if it could satisfy your curiosity. You may also send us a message if your question isn't answered here. We promise to get back to you soon.</p>
                <!-- page-title end -->

                <!-- tabs start -->

                <div class="tabs-style-2">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="active"><a href="#tab1" role="tab" data-toggle="tab"><i class="fa  fa-life-saver pr-10"></i>Support</a></li>

                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1">

                            <!-- accordion start -->

                            <div class="panel-group" id="accordion-faq">
                                <asp:PlaceHolder ID="plhFAQ" runat="server"></asp:PlaceHolder>


                            </div>

                            <!-- accordion end -->

                        </div>
                    </div>
                </div>
                <!-- tabs end -->
            </div>
            <!-- main end -->
            <!-- END OF ACCORDION SECTION -->

        </div>
    </div>
</section>
