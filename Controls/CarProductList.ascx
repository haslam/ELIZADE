<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CarProductList.ascx.cs" Inherits="Controls_CarProductList" %>
<asp:GridView ID="grdCarList" runat="server" AutoGenerateColumns="false" CssClass="table" Width="100%">
    <Columns>
         <asp:BoundField DataField="ID" HeaderText="ID" />
        <asp:BoundField DataField="Name" HeaderText="Car Name" />
        <asp:BoundField DataField="Features" HeaderText="Car Features" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# ENL.Data.Util.AdminUrl + "edit-new-car-product&cid=" + Eval("Id").ToString() %>' runat="server">Edit</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
         <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# ENL.Data.Util.AdminUrl + "maintain-car-product-models&cid=" + Eval("Id").ToString() %>' runat="server">Maintain Models</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
         <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# ENL.Data.Util.AdminUrl + "maintain-car-product-image&cid=" + Eval("Id").ToString() %>' runat="server">Maintain Images</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<br />
<asp:HyperLink ID="hplCarProduct" runat="server" NavigateUrl="/a.aspx?p=add-new-car-product">Add Car Product</asp:HyperLink>