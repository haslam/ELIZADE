<%@ Control Language="C#" AutoEventWireup="true" CodeFile="book-part.ascx.cs" Inherits="Controls_book_part" %>
<cc2:msgBox ID="msgBox1" runat="server" Style="text-align: center" />

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
            </div>
        </div>
    </div>
</div>
<div style="background-color: #f1f1f1;">
    <!-- page-intro end -->
    <div style="background: url('images/Toyota/textbanner3.png') no-repeat; width: 360px; height: 96px;">
        <div class="coloback">
            <h3 class="page-title Title-color">Request a Part</h3>

        </div>
    </div>
</div>

<section class="main-container">

    <div class="container">

        <div class="row">

            <!-- main start -->
            <!-- ================ -->
            <div class="col-xs-12 col-sm-12">

                <p>
                    Request a vehicle Part at an Elizade Service Center and you are sure of a genuine product designed for your vehicle model only. 
Kindly request a vehicle service from your chosen Elizade Service Center.
                </p>
                <p>You may view a complete list of our centers with addresses <a href="/p.aspx?p=servicecenters">here</a> and our privacy statement <a href="/p.aspx?p=privacy-statement">here</a></p>
            </div>
            <div class="space-bottom"></div>

        </div>
        <!-- end row -->

        <div class="row">

            <div class="col-xs-12 col-sm-10">
                <div class="tabs-style-2">
                    <div class="text-left">

                        <!-- Nav tabs -->
                        <ul class="nav nav-pills white space-top" role="tablist">
                            <li class="active"><a href="#formtab1" role="tab" data-toggle="tab" title="Step 1"><i class="fa fa-dot-circle-o pr-5"></i>Step 1 &nbsp; &nbsp;<i class="fa fa-arrow-right pr-5"></i></a></li>
                            <li><a href="#formtab2" role="tab" data-toggle="tab" title="Step 2"><i class="fa fa-dot-circle-o pr-5"></i>Step 2 &nbsp; &nbsp;<i class="fa fa-arrow-right pr-5"></i></a></li>
                            <li><a href="#formtab3" role="tab" data-toggle="tab" title="Step 3"><i class="fa fa-dot-circle-o pr-5"></i>&nbsp; &nbsp;Step 3 </a></li>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <!-- TAB ONE -->
                            <asp:Panel runat="server" CssClass="tab-pane fade in active" ID="pnlOne">
                                <!-- Personal form1 starts here -->
                                <form class="form-horizontal" role="form">

                                    <fieldset>
                                        <legend>Your Personal Details</legend>
                                        <div class="form-group">
                                            <label for="companyType" class="col-sm-3 control-label label-left">Customer Type</label>
                                            <div class="col-sm-9">
                                                <asp:DropDownList ID="ddlcompanyType" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlcompanyType_SelectedIndexChanged" AutoPostBack="True">
                                                    <asp:ListItem Selected="True">--Select--</asp:ListItem>
                                                    <asp:ListItem Value="Individual">Individual</asp:ListItem>
                                                    <asp:ListItem Value="Corporate">Corporate</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <asp:Panel runat="server" ID="personPanel" Visible="false">
                                            <div class="form-group has-feedback">
                                                <label for="fullname" class="col-sm-3 control-label label-left">Full Name</label>
                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="Fullname" CssClass="form-control" runat="server"></asp:TextBox>
                                                    <i class="fa fa-user form-control-feedback"></i>
                                                </div>
                                            </div>
                                        </asp:Panel>

                                        <asp:Panel runat="server" Visible="false" ID="companyPanel">
                                            <div class="form-group has-feedback">
                                                <label for="NameOfCompany" class="col-sm-3 control-label label-left">Name of Company</label>
                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="NameOfCompany" CssClass="form-control" runat="server"></asp:TextBox>
                                                    <i class="fa fa-user form-control-feedback"></i>
                                                </div>
                                            </div>

                                            <div class="form-group has-feedback">
                                                <label for="ContactPerson" class="col-sm-3 control-label label-left">Contact Person</label>
                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="ContactPerson" CssClass="form-control" runat="server"></asp:TextBox>
                                                    <i class="fa fa-user form-control-feedback"></i>
                                                </div>
                                            </div>
                                        </asp:Panel>

                                        <div class="form-group has-feedback">
                                            <label for="emailtxt" class="col-sm-3 control-label label-left">Email</label>
                                            <div class="col-sm-9">
                                                <asp:TextBox CssClass="form-control" ID="emailtxt" placeholder="example@example.com" runat="server" /><i class="fa fa-envelope-o form-control-feedback"></i>
                                            </div>
                                        </div>

                                        <div class="form-group has-feedback">
                                            <label for="PhoneNo" class="col-sm-3 control-label label-left">Phone No</label>
                                            <div class="col-sm-9">
                                                <asp:TextBox ID="PhoneNo" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                    </fieldset>
                                </form>
                                <asp:Button runat="server" ID="BtnOne" CssClass="btn btn-default btn-sm" Style="float: right;" Text="Next" OnClick="BtnOne_Click"></asp:Button>
                                <!-- Personal Info Form 1 ends here -->
                            </asp:Panel>
                            <!-- TAB ONE ENDS HERE -->

                            <!-- tab two -->
                            <asp:Panel runat="server" Visible="false" ID="pnlTwo">
                                <!-- Tab 2 form starts CssClass="tab-pane fade text-left"-->
                                <div class="form-horizontal" role="form">
                                    <fieldset>
                                        <legend>Tell Us About Your Vehicle </legend>

                                        <div class="form-group has-feedback">
                                            <label for="VehicleModel" class="col-sm-3 control-label label-left">Vehicle Model</label>
                                            <div class="col-sm-9">
                                                <asp:TextBox ID="VehicleModel" CssClass="form-control" runat="server"></asp:TextBox>

                                            </div>
                                        </div>

                                        <div class="form-group has-feedback">
                                            <label for="VehicleYear" class="col-sm-3 control-label label-left">Vehicle Year</label>
                                            <div class="col-sm-9">
                                                <asp:DropDownList ID="VehicleYear" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="VYear" DataValueField="VYear">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="SELECT [VYear] FROM [VehicleYear] ORDER BY [VYear] DESC"></asp:SqlDataSource>
                                            </div>
                                        </div>

                                        <div class="form-group has-feedback">
                                            <label for="RegistrationNo" class="col-sm-3 control-label label-left">Registration Number</label>
                                            <div class="col-sm-9">
                                                <asp:TextBox ID="RegistrationNo" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="form-group has-feedback">
                                            <label for="EngineNo" class="col-sm-3 control-label label-left">Engine Number</label>
                                            <div class="col-sm-9">
                                                <asp:TextBox ID="EngineNo" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <%--                                        <div class="form-group has-feedback">
                                            <label for="ChasisNo" class="col-sm-3 control-label label-left">Chassis Number or VIN </label>
                                            <div class="col-sm-9">
                                                <asp:TextBox ID="ChasisNo" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="form-group has-feedback">
                                            <label for="Odometer" class="col-sm-3 control-label label-left">Chassis Number or VIN </label>
                                            <div class="col-sm-9">
                                                <asp:TextBox ID="Odometer" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>--%>

                                        <div class="form-group">
                                            <label for="PartCategory" class="col-sm-3 control-label label-left">Part Category</label>
                                            <div class="col-sm-9">
                                                <asp:DropDownList ID="PartCategory" AppendDataBoundItems="true" CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="PartCartName" DataValueField="PartCartName">
                                                    <asp:ListItem Selected="True">--Select--</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="SELECT [PartCartName] FROM [PartCategories] ORDER BY [PartCartName]"></asp:SqlDataSource>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="PartsName" class="col-sm-3 control-label label-left">Parts Name </label>
                                            <div class="col-sm-9">
                                                <asp:TextBox ID="PartsName" CssClass="form-control" TextMode="MultiLine" Rows="4" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                    </fieldset>
                                </div>
                                <!-- Tab 2 form ends here -->
                                <asp:Button runat="server" ID="BtnTwo" class="btn btn-default btn-sm" Style="float: right;" Text="Next" OnClick="BtnTwo_Click"></asp:Button>
                            </asp:Panel>
                            <!-- tab two ends -->




                            <!-- tab three -->
                            <asp:Panel runat="server" Visible="false" ID="pnlThree">
                                <!-- Tab 3 form starts CssClass="tab-pane fade"-->
                                <div class="form-horizontal" role="form">
                                    <fieldset>
                                        <legend>Delivery Method</legend>


                                        <div class="form-group has-feedback">
                                            <label for="PickUpDate" class="col-sm-3 control-label label-left">Preferred Delivery / Pick-Up Date</label>
                                            <div class="col-sm-9 controls">
                                                <asp:TextBox ID="PickUpDate" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="form-group has-feedback">
                                            <label for="LocationType" class="col-sm-3 control-label label-left">Select Location Type</label>
                                            <div class="col-sm-9 controls">
                                                <asp:DropDownList ID="LocationType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="LocationType_SelectedIndexChanged">
                                                    <asp:ListItem Selected="True">--Select--</asp:ListItem>
                                                    <asp:ListItem Value="ElizadeLocation">Elizade Location</asp:ListItem>
                                                    <asp:ListItem Value="CustomerAddress">Customer Address</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <asp:Panel runat="server" ID="pnlELIAddress" Visible="false">
                                            <div class="form-group">
                                                <label for="ElizadeLocation" class="col-sm-3 control-label label-left">Pick-Up Location</label>
                                                <div class="col-sm-9">
                                                    <asp:DropDownList ID="ElizadeLocation" AppendDataBoundItems="true" runat="server" OnSelectedIndexChanged="ElizadeLocation_SelectedIndexChanged" DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name" AutoPostBack="True">
                                                        <asp:ListItem Selected="True">--Select--</asp:ListItem>
                                                        <%--                                                        <asp:ListItem Value="ogbacenter">Ogba Center</asp:ListItem>
                                                        <asp:ListItem Value="lekkicenter">Lekki Center</asp:ListItem>
                                                        <asp:ListItem Value="port-harcourt">Port Harcourt Center</asp:ListItem>
                                                        <asp:ListItem Value="akurecenter">Akure Center</asp:ListItem>
                                                        <asp:ListItem Value="abujacenter">Abuja Center</asp:ListItem>
                                                        <asp:ListItem Value="ibadancenter">Ibadan Center</asp:ListItem>
                                                        <asp:ListItem Value="uyoCenter">Akwa-Ibom Center</asp:ListItem>
                                                        <asp:ListItem Value="asabacenter">Asaba Center</asp:ListItem>--%>
                                                    </asp:DropDownList>

                                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="SELECT Name from
Locations where LocType not in ('HO','1S') ORDER BY Name"></asp:SqlDataSource>

                                                </div>
                                            </div>
                                            <div class="form-group text-left">
                                                <label for="CustomerAddress" class="col-sm-3 control-label label-left">Elizade's Address</label>
                                                <div class="col-sm-9">
                                                    <p>Elizade's Address</p>
                                                    <asp:TextBox ID="txtElizadeAddress" CssClass="form-control" TextMode="MultiLine" Rows="4" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel runat="server" ID="pnlCAddress" Visible="false">
                                            <div class="form-group text-left">
                                                <label for="CustomerAddress" class="col-sm-3 control-label label-left">Customer's Address</label>
                                                <div class="col-sm-9">
                                                    <p>Preferred Delivery Location</p>
                                                    <asp:TextBox ID="CustomerAddress" CssClass="form-control" TextMode="MultiLine" Rows="4" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <div class="form-group has-feedback">
                                            <label for="DropOfftime" class="col-sm-3 control-label label-left"></label>
                                            <div class="col-sm-9 controls">
                                                <asp:Label ID="Label2" runat="server" Text="NB: You can Track your Vehicle online for your expected Pick-up date."></asp:Label>
                                                <br />
                                                <asp:CheckBox ID="chkNotify" Text="I Would like to hear about special deals and offers from Elizade Nigeria Limited." runat="server" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-3 col-sm-9 text-left">
                                                <asp:Button ID="BtnCommand" runat="server" Text="Submit" CssClass="btn btn-default btn-sm" OnClick="BtnCommand_Click"></asp:Button>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                                <!-- Tab 3 form ends -->
                            </asp:Panel>
                            <!-- tab three ends -->

                        </div>
                        <!-- TAB CONTANT DIV -->
                    </div>
                </div>

            </div>
            <div class="col-sm-2"></div>

        </div>

    </div>
    <!-- end container -->
</section>
<!-- end section -->
<div class="space-bottom">
    <br />
</div>
<div class="lowban"></div>
