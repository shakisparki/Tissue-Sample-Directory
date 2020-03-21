<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Display.aspx.vb" Inherits="ShakirudeenDeveloperAssesment.Display" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1> List of Collections</h1>
    <div>
        <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="LinqDataSource1" AutoGenerateColumns="False" DataKeyNames="Id" CssClass="gridview" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowSelectButton="True" SelectText="View Samples" >
                <%--<ItemStyle ForeColor="#6666FF" />--%>
                </asp:CommandField>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" >
                <HeaderStyle CssClass="grid-column-id-header" />
                <ItemStyle CssClass="grid-column-id" />
                </asp:BoundField>
                <asp:BoundField DataField="Term" HeaderText="Term" SortExpression="Term" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" EntityTypeName="" ContextTypeName="ShakirudeenDeveloperAssesment.DataClasses1DataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" TableName="tb_collections">
        </asp:LinqDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="LinqDataSource2"  GridLines="Horizontal" CssClass="gridview" AllowPaging="True" PageSize="4">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" >
                <HeaderStyle CssClass="grid-column-id-header" />
                <ItemStyle CssClass="grid-column-id" />
                </asp:BoundField>
                <asp:BoundField DataField="Collection_Id" HeaderText="Collection Id" SortExpression="Collection_Id" >
                <HeaderStyle CssClass="grid-column" Wrap="True" />
                <ItemStyle CssClass="grid-column" />
                </asp:BoundField>
                <asp:BoundField DataField="Donor_Count" HeaderText="Donor_Count" SortExpression="Donor_Count" >
                <HeaderStyle CssClass="grid-column" />
                <ItemStyle CssClass="grid-column" />
                </asp:BoundField>
                <asp:BoundField DataField="Material_Type" HeaderText="Material_Type" SortExpression="Material_Type" />
                <asp:BoundField DataField="Last_Updated" HeaderText="Last_Updated" SortExpression="Last_Updated" />
            </Columns>
            <EmptyDataTemplate>
                <asp:Label ID="Label2" runat="server" Text="No Samples Available for Selected Collection"></asp:Label>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="ShakirudeenDeveloperAssesment.DataClasses1DataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="tb_samples" Where="Collection_Id == @Collection_Id">
            <WhereParameters>
                <asp:ControlParameter ControlID="GridView1" DefaultValue="0" Name="Collection_Id" PropertyName="SelectedValue" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
    </div>
</asp:Content>
