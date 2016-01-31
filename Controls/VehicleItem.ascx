<%@ Control Language="C#" AutoEventWireup="true" CodeFile="VehicleItem.ascx.cs" Inherits="Controls_VehicleItem" %>

<!-- banner start -->
<!-- ================ -->
<%--<div class="banner override-banner">
    <div class="fixed-image section" style="background-image: url('ProductImages/<%=BannerImage%>');">
        <div class="container">
            <div class=""></div>



        </div>
    </div>
</div>--%>
<!-- banner end -->

<div class="banner">

				<!-- slideshow start -->
				<!-- ================ -->
				<div class="slideshow white-bg">
					
					<!-- slider revolution start -->
					<!-- ================ -->
					<div class="slider-banner-container">
						<div class="slider-banner-2">
							<ul>
								<!-- slide 1 start -->
								<li data-transition="random-static" data-slotamount="7" data-masterspeed="500" data-saveperformance="on" data-title="Slide 1">
								
								<!-- main image -->
								<img src="ProductImages/<%=BannerImage%>"  alt="slidebg1" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">

								<!-- LAYER NR. 1 -->
								<div class="tp-caption default_bg medium sft tp-resizeme skewed"
									data-x="0"
									data-y="120" 
									data-speed="700"
									data-start="700"
									data-end="10000"
									data-endspeed="600000"><span>Toyota <%=VEHICLE.Name %></span>
								</div>

								
								

							

								</li>
								<!-- slide 1 end -->

							
								

								

							</ul>
							
						</div>
					</div>
					<!-- slider revolution end -->

				</div>
				<!-- slideshow end -->

			</div>
			<!-- banner end -->

<!-- page-intro start-->
<!-- ================ -->
<%--<div class="page-intro">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ol class="breadcrumb">
                    <h3 class="page-title text-left">Toyota <%=VEHICLE.Name %></h3>
                </ol>
            </div>
        </div>
    </div>
</div>--%>
<!-- page-intro end -->

<!-- main-container start -->
<!-- ================ -->
<section class="main-container">
    <div class="container">
        <div class="row">

            <!-- main start -->
            <!-- ================ -->
            <div class="main col-md-12">

                <!-- page-title start -->
                <!-- ================ -->

                <!-- page-title end -->

                <div class="row">
                    <div class="col-xs-10 col-sm-10 colm-centered text-center">

                        <%--<h3 class="page-title text-left">Vehicle</h3>--%>
                      
                        <!-- tabs start -->
                        <div class="tabs-style-5">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist" style="border-bottom: 0px none !important;">
                                <li class="active"><a href="#" role="tab" data-toggle="modal" data-target="#ExteriorModalLabel" data-whatever="@Exterior"><i class="fa fa-car pr-5"></i>EXTERIOR</a></li>
                                <li><a href="#" role="tab" data-toggle="modal" data-target="#InteriorModalLabel" data-whatever="@Interior"><i class="fa fa-car pr-5"></i>INTERIOR</a></li>
                                <li><a href="#" role="tab" data-toggle="modal" data-target="#specModalLabel" data-whatever="@ModelSpec"><i class="fa fa-file-text-o pr-5"></i>MODEL SPEC</a></li>
                                <li><a href="#" role="tab" data-toggle="modal" data-target="#featureModalLabel" data-whatever="@feature"><i class="fa fa-file-text-o pr-5"></i>STANDARD FEATURES</a></li>
                            </ul>
                            <!-- Tab panes -->
                            <%--<div class="tab-content">--%>
                              
                                <!-- Tab1 starts -->
                                       <div class="modal fade" id="ExteriorModalLabel" tabindex="-1" role="dialog" aria-labelledby="ExteriorModalLabel" aria-hidden="true">
				                        <div class="modal-dialog">
				                          <div class="modal-content">
					                        <div class="modal-header modheader">
					
					                        </div>
					                        <div class="modal-body modbody">
					                        <div class="wrap">
                                                            <asp:PlaceHolder ID="plhExterior" runat="server"></asp:PlaceHolder>
                                                            </div>
					                        </div>
					                        <div class="modal-footer">
					                          <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
					 
					                        </div>
				                          </div>
				                        </div>
			                          </div>

                                <!-- tab1 ends -->

                              <!-- Tab2 starts -->
                                   <div class="modal fade" id="InteriorModalLabel" tabindex="-1" role="dialog" aria-labelledby="InteriorModalLabel" aria-hidden="true">
				                    <div class="modal-dialog">
				                      <div class="modal-content">
					                    <div class="modal-header modheader">
					 
					                    </div>
					                    <div class="modal-body modbody">
					                    <div class="wrap">
                                              <asp:PlaceHolder ID="plhInterior" runat="server"></asp:PlaceHolder>
                                            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                        </div>
					                    </div>
					                    <div class="modal-footer">
					                      <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
					 
					                    </div>
				                      </div>
				                    </div>
			                      </div>
                            <!-- Tab 2 ends -->

                            <!-- Tab3 starts -->

                                   <div class="modal fade" id="specModalLabel" tabindex="-1" role="dialog" aria-labelledby="specModalLabel" aria-hidden="true">
				                    <div class="modal-dialog">
				                      <div class="modal-content">
					                    <div class="modal-header modheader">
					                  
					                      <h5 class="modal-title" id="H1">Model Spec</h5>
					                    </div>
					                    <div class="modal-body modbody">
					
                                             <div class="row">
                                                    <div class="col-xs-12 col-sm-12 text-left">
                                                       <asp:PlaceHolder ID="plhModelSpec" runat="server"></asp:PlaceHolder>
                                                    </div>
                                            </div>
					                    </div>
					                    <div class="modal-footer">
					                      <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
					 
					                    </div>
				                      </div>
				                    </div>
			                      </div>
                             
                         <!-- Tab 3 ends -->

                   <!-- Tab 4 starts -->
                              <div class="modal fade" id="featureModalLabel" tabindex="-1" role="dialog" aria-labelledby="featureModalLabel" aria-hidden="true">
				                <div class="modal-dialog">
				                  <div class="modal-content">
					                <div class="modal-header modheader">
					                 
					                  <h5 class="modal-title" id="H2">STANDARD FEATURES</h5>
					                </div>
					                <div class="modal-body modbody">
					                    <div class="row">
                                              <div class="col-xs-12 col-sm-12 text-left featurebox">
                                                  <span>
                                              <asp:PlaceHolder ID="plhFeatures" runat="server"></asp:PlaceHolder>
                                                  </span>
                                              </div>
                                        </div>
					                </div>
					                <div class="modal-footer">
					                  <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
					 
					                </div>
				                  </div>
				                </div>
			                  </div>           
             <!-- Tab 4 ends -->

                            <%--</div><!-- End tab content -->--%>
                        </div>
                        <!-- tabs end -->
                    </div>


                </div>

            </div>
            <!-- main end -->

        </div>
    </div>
</section>
<!-- main-container end -->
