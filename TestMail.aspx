<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestMail.aspx.cs" Inherits="TestMail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="cot" runat="server">
        <asp:PlaceHolder ID="plh" runat="server"></asp:PlaceHolder>
    </div>
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </form>
</body>
</html>
