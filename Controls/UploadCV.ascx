<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UploadCV.ascx.cs" Inherits="Controls_UploadCV" %>
<!-- banner start -->
<!-- ================ -->
<cc2:msgBox ID="msgBox1" runat="server" Style="text-align: center" />
<div class="banner-shadow">
</div>
<div class="back-shadow">
    <img src="images/Toyota/shadow.png" width="100%" style="padding: 0 10px;">
</div>

<!-- banner end -->

<!-- page-intro start-->
<!-- ================ -->
<div  class="page-intro">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            </div>
        </div>
    </div>
</div>
<div style="background-color: #f1f1f1;">
    <!-- page-intro end -->
    <div style="background: url('images/Toyota/textbanner3.png') no-repeat; width: 360px; height: 96px;">
        <div class="coloback">
            <h2 class="page-title Title-color">Upload CV</h2>

        </div>
    </div>
</div>
<div class="space-bottom">
    <br />
</div>
<section class="main-container">

    <div class="container">

        <div class="row">

            <!-- main start -->
            <!-- ================ -->
            <div class="col-xs-8 col-sm-8 colm-centered text-center">

                <h3>Kindly fill in the fields below.</h3>
                <div class="space-bottom"></div>
                <form class="form-horizontal" role="form">
                    <div class="form-group has-feedback">
                        <label for="fullname" class="col-sm-3 control-label label-left">Full Name</label>
                        <div class="col-sm-9">
                            <asp:TextBox runat="server" CssClass="form-control" ID="fullname" />
                            <i class="fa fa-user form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group has-feedback">
                        <label for="emailtxt" class="col-sm-3 control-label label-left">Email</label>
                        <div class="col-sm-9">
                            <asp:TextBox runat="server" CssClass="form-control" ID="emailtxt" placeholder="example@example.com" /><i class="fa fa-envelope-o form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group has-feedback">
                        <label for="phonetxt" class="col-sm-3 control-label label-left">Phone No</label>
                        <div class="col-sm-9">
                            <asp:TextBox runat="server" CssClass="form-control" ID="phonetxt" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="additionaltxt" class="col-sm-3 control-label label-left">Additional Info</label>
                        <div class="col-sm-9">
                            <asp:TextBox CssClass="form-control" Rows="3" ID="additionaltxt" runat="server" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="uploadcv" class="col-sm-3 control-label label-left">Upload CV</label>
                        <div class="col-sm-9">
                            <asp:FileUpload ID="uploadcv" runat="server"/>
                            <p class="help-block">Upload types: .pdf .doc .docx only</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9 text-left">
                            <asp:Button ID="BtnCommand" runat="server" CssClass="btn btn-primary btn-navy" Text="Submit" OnClick="BtnCommand_Click" />
                        </div>
                    </div>
                </form>

            </div>
        </div>
        <!-- end row -->

    </div>
    <!-- end container -->
</section>
<!-- end section -->


