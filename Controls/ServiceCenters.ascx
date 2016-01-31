<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ServiceCenters.ascx.cs" Inherits="Controls_ServiceCenters" %>

<!-- banner start -->
<!-- ================ -->
<div id="maps-wrapper">
    <!-- google maps start -->
    <div id="map-locations">

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
                    <li>Service and Parts</li>
                    <li class="active">Our Locations</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<!-- page-intro end -->


<section class="main-container">

    <div class="container">

        <div class="row">

            <!-- main start -->
            <!-- ================ -->

        </div>
        <!-- end row -->
     
      
        <div class="row">
            <div class="col-sm-12 text-left">
                <h3 style="color: navy;">3S (Sales, Services and Spare Parts)</h3>
            </div>
        </div>
        <asp:PlaceHolder ID="plhRows" runat="server"></asp:PlaceHolder>

        <div class="row" style="margin:8px;">
            <div class="col-sm-12 text-left">
                <h3 style="color: navy;">1S (Services)</h3>
            </div>
        </div>

       <asp:PlaceHolder ID="plhOneS" runat="server"></asp:PlaceHolder>

    </div>
    <!-- end container -->
</section>
<!-- end section -->
<div class="space-bottom">
    <br />
</div>
<div class="lowban"></div>




