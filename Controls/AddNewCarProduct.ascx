<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddNewCarProduct.ascx.cs" Inherits="Controls_AddNewCarProduct" %>
<table class="table" style="width:100%">
    <tr>
        <td style="text-align: right">
            Car Product Id</td>
        <td>
            <asp:Label ID="lblId" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">
            Name
        </td>
        <td>
            <asp:TextBox ID="txtCarName" runat="server"></asp:TextBox>
        </td>
        <td></td>
    </tr>
    <tr>
        <td style="text-align: right">
            Features</td>
        <td>
            <CKEditor:CKEditorControl ID="txtFeatures" runat="server" >

            </CKEditor:CKEditorControl></td>
        <td>&nbsp;</td>
    </tr>
     <tr>
        <td style="text-align: right">Category</td>
        <td>
            <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="SELECT [Id], [Name] FROM [CarCategory] WHERE ([Active] = @Active) ORDER BY [Name]">
                <SelectParameters>
                    <asp:Parameter DefaultValue="True" Name="Active" Type="Boolean" />
                </SelectParameters>
            </asp:SqlDataSource>
         </td>
        <td></td>
    </tr>
     <tr>
        <td style="text-align: right">Sub-Category</td>
        <td>
            <asp:DropDownList ID="ddlSubCategory" runat="server" DataSourceID="SqlDataSource2" DataTextField="SubCartName" DataValueField="RecId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="SELECT [RecId], [SubCartName] FROM [SubCarCategory] WHERE (([CatID] = @CatID) AND ([Active] = @Active))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlCategory" Name="CatID" PropertyName="SelectedValue" Type="Int32" />
                    <asp:Parameter DefaultValue="True" Name="Active" Type="Boolean" />
                </SelectParameters>
            </asp:SqlDataSource>
         </td>
        <td>&nbsp;</td>
    </tr>
     <tr>
        <td style="text-align: right">&nbsp;</td>
        <td>
            <asp:CheckBox ID="chkActive" runat="server" Text="Active" />
         </td>
        <td>&nbsp;</td>
    </tr>
     <tr>
        <td style="text-align: right">&nbsp;</td>
        <td>
            <asp:Button ID="BtnCommand" runat="server" Text="Save Car Product" OnClick="BtnCommand_Click" />
         </td>
        <td>&nbsp;</td>
    </tr>
</table>