<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AllTransactions.aspx.cs" Inherits="Ecommerce.AllTransactions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 mx-auto">
                <a href="Homepage.aspx" class="text-decoration-none"><i class="fa-solid fa-backward"></i> <span class="auto-style1">Back</span></a><br><br>
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="200" src="imgs/transactions.png" />
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="text-center">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField DataField="username" HeaderText="User name" SortExpression="username">
                                        <HeaderStyle Font-Names="Cambria" />
                                        <ItemStyle Font-Names="Cambria" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="ProductId" HeaderText="PId" SortExpression="ProductId">
                                        <HeaderStyle Font-Names="Cambria" />
                                        <ItemStyle Font-Names="Cambria" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName">
                                        <HeaderStyle Font-Names="Cambria" />
                                        <ItemStyle Font-Names="Cambria" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="ProductQuantity" HeaderText="Quantity" SortExpression="ProductQuantity">
                                        <HeaderStyle Font-Names="Cambria" />
                                        <ItemStyle Font-Names="Cambria" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="tprice" HeaderText="Price" SortExpression="tprice">
                                        <HeaderStyle Font-Names="Cambria" />
                                        <ItemStyle Font-Names="Cambria" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Tdatetime" HeaderText="Date" SortExpression="Tdatetime">
                                        <HeaderStyle Font-Names="Cambria" />
                                        <ItemStyle Font-Names="Cambria" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="transactionid" HeaderText="Transaction id" SortExpression="transactionid">
                                        <HeaderStyle Font-Names="Cambria" />
                                        <ItemStyle Font-Names="Cambria" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Orderaddress" HeaderText="Orderaddress" SortExpression="Orderaddress" />
                                    </Columns>
                                    </asp:GridView>
                                </div>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EcomDbconn %>" SelectCommand="SELECT * FROM [ecom_Transactions]"></asp:SqlDataSource>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
