<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LoginControl.ascx.cs" Inherits="Controls_LoginControl" %>
<div class="row">
    <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
        <form class="reg-page">
            <div class="row">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </div>
            <div class="reg-header">
                <h2>Login to your account</h2>
            </div>

            <div class="input-group margin-bottom-20">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <asp:TextBox runat="server" ID="txtUsername"  placeholder="Username" CssClass="form-control"/>
            </div>
            <div class="input-group margin-bottom-20">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" placeholder="Password" CssClass="form-control"/>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <label class="checkbox">
                        <asp:CheckBox Id="chkrememberme" Text="" runat="server"/>
                        Stay signed in</label>
                </div>
                <div class="col-md-6">
                    <asp:button runat="server" CssClass="btn-u pull-right" ID="BtnCommand" Text="Login" OnClick="BtnCommand_Click" />
                </div>
            </div>

            <hr>

            <h4>Forget your Password ?</h4>
            <p>no worries, <a class="color-green" href="#">click here</a> to reset your password.</p>
        </form>
    </div>
</div>
<!--/row-->
