<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ManagementTeam.ascx.cs" Inherits="Controls_ManagementTeam" %>

<!-- banner start -->
<!-- ================ -->
<div class="banner-shadow">
</div>
<div class="back-shadow">
    <img src="images/Toyota/shadow.png" width="100%" style="padding: 0 10px;">
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
                    <li>About us</li>
                    <li class="active">Management Team</li>
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
            <h2 class="page-title Title-color">Management Team</h2>

        </div>
    </div>
</div>
<div class="space-bottom">
    <br />
</div>
<!-- page-title end -->
<!-- Section opened -->

<div class="section gray-bg clearfix">
    <div class="container">
        <asp:PlaceHolder ID="plhBODMembers" runat="server"></asp:PlaceHolder>
    </div>
</div>
<!-- section end -->

<!-- Section closed -->
