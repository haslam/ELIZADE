<%@ Control Language="C#" AutoEventWireup="true" CodeFile="EditCarModelPerCarCTRL.ascx.cs" Inherits="Controls_EditCarModelPerCarCTRL" %>

<table style="width: 100%" class="table">
    <tr>
        <td style="text-align: right">Model</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditModel" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right"><strong>Overview</strong></td>
        <td>
            <asp:TextBox Width="500" ID="txtEditOverview" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td></td>
    </tr>
    <tr>
        <td style="text-align: right">Year</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditYear" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Transmission</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditTransmission" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Engine Capacity</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditEngineCapacity" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Drive Line</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditDriveLine" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Door</td>
        <td>
            <asp:TextBox ID="txtEditDoor" Width="500" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Exterior Colour Options</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditExteriorColorOption" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Interior Colour Options</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditInteriorColorOption" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Body Style</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditBodyStyle" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Fuel Efficiency Rating</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditFuelEffiRating" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right"><strong>Key Features</strong></td>
        <td>
            <asp:TextBox Width="500" ID="txtEditKeyFeatures" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Convenience </td>
        <td>
            <CKEditor:CKEditorControl Width="500" ID="txtEditConvinence" runat="server"></CKEditor:CKEditorControl>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Entertainment </td>
        <td>
            <CKEditor:CKEditorControl Width="500" ID="txtEditEntertainment" runat="server"></CKEditor:CKEditorControl>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">&nbsp;Safety/Security</td>
        <td>
            <CKEditor:CKEditorControl Width="500" ID="txtEditSafetySecurity" runat="server"></CKEditor:CKEditorControl>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Lighting Visibility &amp; Instrumentation</td>
        <td>
            <CKEditor:CKEditorControl Width="500" ID="txtEditLightingVI" runat="server"></CKEditor:CKEditorControl>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right"><strong>Weight &amp; Dimensions</strong></td>
        <td>
            <asp:TextBox Width="500" ID="txtEditWeightDimension" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">&nbsp;Length x Width x Height (mm)</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditLenghtWidthHeight" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Wheelbase (mm)</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditWheelbase" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Ground Clearance (mm)</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditGroundClearance" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Curb Weight (kg)</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditCubWeight" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Gross Vehicle Weight (kg)</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditGrossVehicleWeigth" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Minimum Turning Radius (mm)</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditMinimumTRadius" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">&nbsp;<strong>Suspension/Handling</strong></td>
        <td>
            <asp:TextBox Width="500" ID="txtEditSuspension" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">&nbsp;Front Suspension</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditFrontSuspension" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Rear Suspension</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditRearSuspension" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Brakes (Front/Rear)</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditBrakesFR" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Tyres (Front &amp; Rear)</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditTyresFR" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Wheels</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditWheels" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right"><strong>Power Train</strong></td>
        <td>
            <asp:TextBox Width="500" ID="txtEditPowerTrain" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Engine </td>
        <td>
            <asp:TextBox Width="500" ID="txtEditEngine" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Engine Size</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditEngineSize" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Piston Displacement(cc)</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditPiston" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Max. Output (KW/rpm)</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditMaxOutput" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Max. Torque (Nm/rpm)</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditMaxTorque" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">Fuel System</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditFuelSystem" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <%--<tr>
        <td style="text-align: right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fuel tank Capacity (Liters)</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditFuelTank" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>--%>
    <tr>
        <td style="text-align: right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fuel tank Capacity (Liters)</td>
        <td>
            <asp:TextBox Width="500" ID="txtEditFuelTankValue" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">&nbsp;</td>
        <td>
            <asp:Button ID="btnAddModelSpec" runat="server" Text="Save Model Spec" OnClick="btnAddModelSpec_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
