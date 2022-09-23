<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Ecommerce.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
            <asp:BoundField DataField="Pbrand" HeaderText="Pbrand" SortExpression="Pbrand" />
            <asp:BoundField DataField="Pdesc" HeaderText="Pdesc" SortExpression="Pdesc" />
            <asp:BoundField DataField="Pimage" HeaderText="Pimage" SortExpression="Pimage" />
            <asp:BoundField DataField="Pprice" HeaderText="Pprice" SortExpression="Pprice" />
            <asp:BoundField DataField="Pstock" HeaderText="Pstock" SortExpression="Pstock" />
            <asp:BoundField DataField="Pcategory" HeaderText="Pcategory" SortExpression="Pcategory" />
            <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EcomDbconn %>" SelectCommand="SELECT * FROM [ecom_products] WHERE ([Pcategory] = @Pcategory2)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="Pcategory2" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
