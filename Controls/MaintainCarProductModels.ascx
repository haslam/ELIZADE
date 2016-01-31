<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MaintainCarProductModels.ascx.cs" Inherits="Controls_MaintainCarProductModels" %>
<asp:GridView ID="grdModelSpec" AutoGenerateColumns="false" CssClass="table" runat="server" Width="100%" OnRowCommand="BtnEditCommand_Click">
    <Columns>
        <asp:BoundField DataField="Model" HeaderText="Model" />
        <asp:BoundField DataField="Year" HeaderText="Year" />
        <%--<asp:BoundField DataField="ExteriorColorOption" HeaderText="ExteriorColorOption" />--%>
        <asp:BoundField DataField="Transmission" HeaderText="Transmission" />
        <asp:BoundField DataField="EngineCapacity" HeaderText="EngineCapacity" />
        <asp:BoundField DataField="DriveLine" HeaderText="DriveLine" />
        <asp:BoundField DataField="Doors" HeaderText="Doors" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="BtnEditCommand" NavigateUrl='<%# "~/a.aspx?p=edit-car-model-per-car&action=1&bid=" + Eval("id") %>' runat="server">Edit</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

<br />
<asp:LinkButton ID="HyperLink1" runat="server" OnClick="HyperLink1_Click">Add New Car Model</asp:LinkButton>
<br />




