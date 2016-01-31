<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Our-Board.ascx.cs" Inherits="Controls_Our_Board" %>

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
                    <li class="active">Our Board</li>
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
            <h2 class="page-title Title-color">Our Board</h2>

        </div>
    </div>
</div>
<div class="space-bottom">
    <br />
</div>
<!-- page-title end -->
<div class="section clearfix">

    <div class="container">
        <div class="row">

            <!-- main start -->
            <!-- ================ -->
            <div class="main col-md-12">

                <!-- page-title start -->
                <!-- ================ -->

                <!-- page-title end -->
                <div class="row grid-space-20 page-allmargin">

                    <div class="col-lg-8 col-md-12">
                        <div class="image-box team-member option-3 imagebox-nocolor">
                            <div class="overlay-container">
                                <img src="<%=FounderPic %>" alt="Chief Michael Ade-Ojo" class="img-circle">
                                <div class="overlay">
                                    <ul class="social-links colored clearfix">
                                        <li class="link">
                                            <button type="button" class="btn btn-plain btn-sm" data-toggle="modal" data-target="#founderModal"><i class="glyphicon glyphicon-eye-open"></i></button>
                                        </li>

                                    </ul>

                                </div>
                            </div>
                            <div class="image-box-body">
                                <h3 class="title"><%=FounderName %></h3>
                                <small><%=FounderTitle %></small>
                                <div class="separator-2"></div>
                                <%=FounderShortBio %>
                            </div>
                        </div>

                        <!-- Modal -->

                        <div class="modal fade" id="founderModal" tabindex="-1" role="dialog" aria-labelledby="founderModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title" id="founderModalLabel"><%=FounderName %></h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="thumbnail pull-left">
                                            <img src="<%=FounderPic %>" alt="Chief Michael Ade-Ojo" class="img-circle thumbnail">
                                        </div>
                                        <%=FounderBio %>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-sm btn-dark" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal End -->
                    </div>
                </div>
                <asp:PlaceHolder ID="plhBODMembers" runat="server"></asp:PlaceHolder>
                
            </div>
            <!-- main start col close -->
        </div>
        <!-- row close -->
    </div>
    <!-- container close -->
</div>
<!-- section div closed -->
