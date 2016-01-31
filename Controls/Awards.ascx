<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Awards.ascx.cs" Inherits="Controls_Awards" %>

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
                    <li>About Us</li>
                    <li class="active">Awards</li>
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
            <h2 class="page-title Title-color">Awards</h2>

        </div>
    </div>
</div>

<div class="space-bottom"></div>
<!-- page-title end -->
<!-- main-container start -->
<!-- ================ -->
<section class="main-container">

    <div class="container">
        <div class="row">

            <!-- main start -->
            <!-- ================ -->
            <div class="main col-xs-12 col-md-12" style="margin-left: 10px; margin-right: 10px;">

                <p>
                    Elizade Nigeria Limited has won many awards since its inception in 1971 for providing quality customers satisfaction, sales, service and spare parts.
                    <br class="hidden-sm hidden-xs">
                    The following are a few highlights of these accomplishments:
                </p>


                <!-- Tab start here -->



                <div id="verti" class="vertical">
                    <!-- Nav tabs -->
                    <ul id="navt" class="nav nav-tabs" role="tablist" style="border-radius: 5px;">
                        <asp:PlaceHolder ID="plhTabs" runat="server"></asp:PlaceHolder>
                        <%--
                        <li class="active">
                            <h3><a href="#vtab1" role="tab" data-toggle="tab">2013</a></h3>
                        </li>
                            <li>
                            <h3><a href="#vtab2" role="tab" data-toggle="tab">2012</a></h3>
                        </li>
                        <li>
                            <h3><a href="#vtab3" role="tab" data-toggle="tab">2011</a></h3>
                        </li>
                        <li>
                            <h3><a href="#vtab4" role="tab" data-toggle="tab">2010</a></h3>
                        </li>
                        <li>
                            <h3><a href="#vtab5" role="tab" data-toggle="tab">2009</a></h3>
                        </li>
                        <li>
                            <h3><a href="#vtab6" role="tab" data-toggle="tab">2008</a></h3>
                        </li>
                        <li>
                            <h3><a href="#vtab7" role="tab" data-toggle="tab">2007</a></h3>
                        </li>
                        <li>
                            <h3><a href="#vtab8" role="tab" data-toggle="tab">2006</a></h3>
                        </li>--%>
                    </ul>
                    <!-- Tab panes -->


                    <div class="tab-content" style="width: 100%;">
                        <asp:PlaceHolder ID="plhTabContent" runat="server"></asp:PlaceHolder>
                        <!-- Tab from here -->

                        <%--                        <!-- Tab1 starts here -->
                        <div class="tab-pane fade in active" id="vtab1">
                            <div class="image-boxes row">
                                <div class="col-md-4 col-sm-6 ">
                                    <div class="image-box">
                                        <div class="overlay-container new-color">
                                            <img src="images/Toyota/awards/thumb/2013-1.png" alt="">
                                        </div>
                                        <div class="image-box-body">
                                            <h5>Customer Service Excellence</h5>
                                            <p>Description : Customer Service Excellence Award in Automobile Industry</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!-- Tab1 ends here -->

                        <!-- To here -->

                        <!-- Tab2 starts here -->
                        <div class="tab-pane fade" id="vtab2">
                            <div class="image-boxes row">
                                <div class="col-md-4 col-sm-6 ">
                                    <div class="image-box">
                                        <div class="overlay-container new-color">
                                            <img src="images/Toyota/awards/thumb/2012-1.png" alt="">
                                        </div>
                                        <div class="image-box-body">
                                            <h5>Excellence Sevice to Humanity</h5>
                                            <p>Recognition of 41 Years of Excellent Service to Humanity </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4 col-sm-6 ">
                                    <div class="image-box">
                                        <div class="overlay-container new-color">
                                            <img src="images/Toyota/awards/thumb/2012-2.png" alt="">
                                        </div>
                                        <div class="image-box-body">
                                            <h5>Dealer of the Year</h5>
                                            <p>For emerging the best overall Toyota Dealer in Nigeria </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4 col-sm-6 ">
                                    <div class="image-box">
                                        <div class="overlay-container new-color">
                                            <img src="images/Toyota/awards/thumb/2012-3.png" alt="">
                                        </div>
                                        <div class="image-box-body">
                                            <h5>Enterprise Brand Award</h5>
                                            <p>In recognizing of its Commitment to Enterprise Development in Nigeria </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Tab2 ends here -->

                        <!-- Tab3 starts here -->
                        <div class="tab-pane fade" id="vtab3">
                            <div class="image-boxes row">
                                <div class="col-md-4 col-sm-6 ">
                                    <div class="image-box">
                                        <div class="overlay-container new-color">
                                            <img src="images/Toyota/awards/thumb/2011-1.png" alt="">
                                        </div>
                                        <div class="image-box-body">
                                            <h5>TSM Kodawari</h5>
                                            <p>TSM Kodawari Award for the Year  </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4 col-sm-6 ">
                                    <div class="image-box">
                                        <div class="overlay-container new-color">
                                            <img src="images/Toyota/awards/thumb/2011-2.png" alt="">
                                        </div>
                                        <div class="image-box-body">
                                            <h5>Dealer of the Year</h5>
                                            <p>For emerging the best overall Toyota Dealer in Nigeria in 2011  </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4 col-sm-6 ">
                                    <div class="image-box">
                                        <div class="overlay-container new-color">
                                            <img src="images/Toyota/awards/thumb/2011-3.png" alt="">
                                        </div>
                                        <div class="image-box-body">
                                            <h5>Auto Dealer of the Year </h5>
                                            <p>Auto Dealer of the Year presented by On Wheels  </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Tab3 ends here -->

                        <!-- Tab4 starts here -->
                        <div class="tab-pane fade" id="vtab4">
                            <div class="image-boxes row">
                                <div class="col-md-4 col-sm-6 ">
                                    <div class="image-box">
                                        <div class="overlay-container new-color">
                                            <img src="images/Toyota/awards/thumb/2010-1.png" alt="">
                                        </div>
                                        <div class="image-box-body">
                                            <h5>Auto Dealer of the Year</h5>
                                            <p>Auto Dealer of the Year presented by On Wheels </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4 col-sm-6 ">
                                    <div class="image-box">
                                        <div class="overlay-container new-color">
                                            <img src="images/Toyota/awards/thumb/2010-2.png" alt="">
                                        </div>
                                        <div class="image-box-body">
                                            <h5>Dealer of the Year</h5>
                                            <p>7th Annual Toyota Awards (Dealer Category) - Dealer of the Year  </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Tab4 ends here -->

                        <!-- Tab5 starts here -->
                        <div class="tab-pane fade" id="vtab5">
                            <div class="image-boxes row">
                                <div class="col-md-4 col-sm-6 ">
                                    <div class="image-box">
                                        <div class="overlay-container new-color">
                                            <img src="images/Toyota/awards/thumb/2009-1.png" alt="">
                                        </div>
                                        <div class="image-box-body">
                                            <h5>Best Workshop Facility</h5>
                                            <p>Award of Best Workshop Facility </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4 col-sm-6 ">
                                    <div class="image-box">
                                        <div class="overlay-container new-color">
                                            <img src="images/Toyota/awards/thumb/2009-2.png" alt="">
                                        </div>
                                        <div class="image-box-body">
                                            <h5>Dealer of the Year</h5>
                                            <p>Dealer of the Year at 6th Annual Toyota Awards  </p>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                        <!-- Tab5 ends here -->

                        <!-- Tab6 starts here -->
                        <div class="tab-pane fade" id="vtab6">
                            <div class="image-boxes row">
                                <div class="col-md-4 col-sm-6 ">
                                    <div class="image-box">
                                        <div class="overlay-container new-color">
                                            <img src="images/Toyota/awards/thumb/2008-1.png" alt="">
                                        </div>
                                        <div class="image-box-body">
                                            <h5>Award of Excellence</h5>
                                            <p>Award of Excellence for the Year  </p>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                        <!-- Tab6 ends here -->

                        <!-- Tab7 starts here -->
                        <div class="tab-pane fade" id="vtab7">
                            <div class="image-boxes row">
                                <div class="col-md-4 col-sm-6 ">
                                    <div class="image-box">
                                        <div class="overlay-container new-color">
                                            <img src="images/Toyota/awards/thumb/2007-1.png" alt="">
                                        </div>
                                        <div class="image-box-body">
                                            <h5>Award of Excellence</h5>
                                            <p>Award of Excellence for the Year  </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4 col-sm-6 ">
                                    <div class="image-box">
                                        <div class="overlay-container new-color">
                                            <img src="images/Toyota/awards/thumb/2007-2.png" alt="">
                                        </div>
                                        <div class="image-box-body">
                                            <h5>Award of Excellence</h5>
                                            <p>Award of Excellence for the Year  </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 ">
                                    <div class="image-box">
                                        <div class="overlay-container new-color">
                                            <img src="images/Toyota/awards/thumb/2007-3.png" alt="">
                                        </div>
                                        <div class="image-box-body">
                                            <h5>Award of Excellence</h5>
                                            <p>Award of Excellence for the Year  </p>
                                        </div>
                                    </div>
                                </div>


                            </div>

                            <div class="image-boxes row">
                                <div class="col-md-4 col-sm-6 ">
                                    <div class="image-box">
                                        <div class="overlay-container new-color">
                                            <img src="images/Toyota/awards/thumb/2007-4.png" alt="">
                                        </div>
                                        <div class="image-box-body">
                                            <h5>Award of Excellence</h5>
                                            <p>Award of Excellence for the Year  </p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!-- Tab7 ends here -->

                        <!-- Tab8 starts here -->
                        <div class="tab-pane fade" id="vtab8">
                            <div class="image-boxes row">
                                <div class="col-md-4 col-sm-6 ">
                                    <div class="image-box">
                                        <div class="overlay-container new-color">
                                            <img src="images/Toyota/awards/thumb/2006-1.png" alt="">
                                        </div>
                                        <div class="image-box-body">
                                            <h5>Best in Sales Performance </h5>
                                            <p>Best in Sales Performance presented by Toyota Nigeria Limited </p>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                        <!-- Tab8 ends here -->--%>
                    </div>
                </div>

                <!-- end here -->



            </div>

        </div>
    </div>
</section>
