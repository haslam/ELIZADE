<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PageContent.ascx.cs" Inherits="PageControls_PageContent" %>

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
                    <li class="active"><%=PageTitle %></li>
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
            <h2 class="page-title Title-color"><%=PageTitle %></h2>
        </div>
    </div>
</div>
<div class="space-bottom"></div>


<!-- Hero Unit -->
<section class="main-container">

    <div class="container">
        <div class="row">

            <!-- main start -->
            <!-- ================ -->
            <div class="main col-md-11" style="margin-left: 15px;">


                <div class="span10" style="line-height: 1.95; padding: 25px 20px;">
                    <%=PageContent %>
                    <!-- sidebar start -->
                </div>
            </div>
            <aside class="col-md-1">

                <div style="background-color: #f1f1f1;"></div>

            </aside>
            <!-- sidebar end -->

        </div>
    </div>
</section>
