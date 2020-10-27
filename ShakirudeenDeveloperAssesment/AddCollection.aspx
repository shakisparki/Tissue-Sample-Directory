<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddCollection.aspx.vb" MasterPageFile="~/Site.Master"  Inherits="ShakirudeenDeveloperAssesment.AddCollection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="~/Content/Master.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1 {
            
        }
        
        .auto-style1 {
            height: 50px;
        }
        
    </style>
    <h1> Enter New Collection</h1>
    <div>
    <br />
    <table style="width:100%;">
        <tr>
            <td class="table-column-labels">
                <asp:Label ID="Label3" runat="server" Text="Disease Term:" CssClass="form-labels"></asp:Label>
            </td>
            <td class="table-column-fields">
                <asp:TextBox ID="tb_term" runat="server" CssClass="form-textbox"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_term" ErrorMessage="Disease Term Required*" SetFocusOnError="True" CssClass="form-validators"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="table-column-labels">
                <asp:Label ID="Label2" runat="server" Text="Title:" CssClass="form-labels"></asp:Label>
            </td>
            <td class="table-column-fields">
                <asp:TextBox ID="tb_title" runat="server" CssClass="form-textbox"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_title" ErrorMessage="Title Required*" SetFocusOnError="True" CssClass="form-validators"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="table-column-labels">
                </td>
            <td class="table-column-fields">
                </td>
            <td class="auto-style1">
                </td>
        </tr>
        <tr>
            <td colspan="2" class="table-column-labels">
                </td>
            <td class="auto-style1">
                <asp:Label ID="lbl_status" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="table-column-submit">
                <asp:Button ID="btn_submit" runat="server" Height="53px" Text="Add Collection" Width="119px" CssClass="form-button" />
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
