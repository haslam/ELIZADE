<%@ Page Title="" Language="C#" MasterPageFile="~/ENLMaster.master" AutoEventWireup="true"
    CodeFile="p.aspx.cs" Inherits="p" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row-fluid">
        <cc2:msgBox ID="msgBox1" runat="server" Style="text-align: center" />
        <div class="row-fluid">
            <div class="" id="message" runat="server" visible="false">
            </div>
        </div>
        <div id="cort" runat="server" style="width: 100%">
        </div>
    </div>
</asp:Content>
