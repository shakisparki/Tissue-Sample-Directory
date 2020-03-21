<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Populate.aspx.vb" Inherits="ShakirudeenDeveloperAssesment.Populate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="~/Content/Master.css" rel="stylesheet" type="text/css" />
    <style type="text/css" re>
        .style1 {
            
        }
        
    </style>
    <h1> Enter New Sample Data</h1>
    <div>
    <br />
    <table style="width:100%;">
        <tr>
            <td class="table-column-labels">
                <asp:Label ID="Label3" runat="server" Text="Collection:" CssClass="form-labels"></asp:Label>
            </td>
            <td class="table-column-fields">
                <asp:DropDownList ID="ddl_collection" runat="server" DataSourceID="LinqDataSource1" DataTextField="Term" DataValueField="Id"  AppendDataBoundItems="True" CssClass="form-dropdown">
                    <asp:ListItem Value="0" Selected="True">Select...</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style1">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="ddl_collection" ErrorMessage="Select a Sample Collection*" ValueToCompare="0" Operator="NotEqual" CssClass="form-validators"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="table-column-labels">
                <asp:Label ID="Label1" runat="server" Text="Donor Count:" CssClass="form-labels"></asp:Label>
            </td>
            <td class="table-column-fields">
                <asp:TextBox ID="tb_donorCount" runat="server" CausesValidation="True" TextMode="Number" CssClass="form-textbox"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_donorCount" CssClass="form-validators" ErrorMessage="Enter Donor Count (Numbers only)*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="table-column-labels">
                <asp:Label ID="Label2" runat="server" Text="Material Type:" CssClass="form-labels"></asp:Label>
            </td>
            <td class="table-column-fields">
                <asp:TextBox ID="tb_materialType" runat="server" CssClass="form-textbox"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_materialType" ErrorMessage="Material Type Required*" SetFocusOnError="True" CssClass="form-validators"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="table-column-labels">
                <asp:Label ID="Label4" runat="server" Text="Date Updated:   " CssClass="form-labels"></asp:Label>
            </td>
            <td class="table-column-fields">
                <asp:TextBox ID="tb_dateUploaded" runat="server" TextMode="Date" CssClass="form-textbox"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RangeValidator ID="rv_tb_dateUploaded" runat="server" ControlToValidate="tb_dateUploaded" ErrorMessage="RangeValidator" Type="Date" MaximumValue="01-01-2000" MinimumValue="01-01-1990" CssClass="form-validators">Date should be no later than today&#39;s date*</asp:RangeValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_dateUploaded" ErrorMessage="Enter sample date*" CssClass="form-validators"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="table-column-labels">
                &nbsp;</td>
            <td>
                <asp:Label ID="lbl_status" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="table-column-submit">
                <asp:Button ID="btn_submit" runat="server" Height="53px" Text="Upload Sample" Width="119px" CssClass="form-button" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClasses1DataContext" EntityTypeName="" TableName="tb_collections" EnableDelete="True" EnableInsert="True" EnableUpdate="True">
    </asp:LinqDataSource>
    </div>
</asp:Content>