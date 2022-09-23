<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TransactionsData.aspx.cs" Inherits="Ecommerce.TransactionsData" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 32px;
            text-align: left;
        }
        .auto-style5 {
            height: 32px;
            width: 207px;
            font-family: Cambria;
            text-align: left;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style8 {
            width: 207px;
            font-family: Cambria;
            text-align: left;
        }
        .auto-style9 {
            font-size: large;
            font-family: Cambria;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 mx-auto">
                &nbsp;<a href="Profile.aspx" class="text-decoration-none"><span class="auto-style1">Back</span></a><br><br>

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
                                <asp:GridView class="table table-striped table-bordered align-content-center align-items-center" ID="transactiongrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>

                                        <asp:BoundField DataField="ProductId" HeaderText="PId" SortExpression="ProductId">
                                            <ControlStyle Font-Names="Cambria" />
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
                                        <asp:BoundField DataField="transactionid" HeaderText="Transaction Id" SortExpression="transactionid">
                                            <HeaderStyle Font-Names="Cambria" />
                                            <ItemStyle Font-Names="Cambria" />
                                        </asp:BoundField>
                                    </Columns>
                                    <HeaderStyle BackColor="#FFCC99" />
                                    <RowStyle BackColor="#FFFFCC" ForeColor="Black" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EcomDbconn %>" SelectCommand="SELECT * FROM [ecom_Transactions] WHERE ([username] = @username)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>
                                    <span class="auto-style1">Trnsaction</span>ID
                                </label>
                                &nbsp;<div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control ms-0 m-0" ID="transactionid" runat="server" placeholder="Transaction Id"></asp:TextBox>
                                        <asp:Button class="btn btn-primary btn-sm m-0" ID="Go" runat="server" Text="GO" OnClick="Go_Click" />

                                        &nbsp;
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="transactionid" ErrorMessage="Transaction Id is Required" Font-Names="Cambria" ForeColor="Red"></asp:RequiredFieldValidator>
                                        &nbsp;
                                       
                                    </div>

                                </div>
                                        <asp:Label ID="Ntransactionerr" runat="server" Font-Names="Cambria" ForeColor="Red" Text="No Transactions" Visible="False"></asp:Label>
                                        
                                        <asp:Label ID="transactionerr" runat="server" Font-Names="Cambria" ForeColor="Red" Text="Transaction not found" Visible="False"></asp:Label>

                            </div>
                        </div>
                        <br />
                        <br />

                        <div class="row">
                            <asp:Panel ID="invoicePanel" runat="server" Visible="False">
                                <div class="text-center">
                                    <strong><span class="auto-style6">Invoice Receipt</span></strong><br />
                                </div>
                                <br />
&nbsp;<br />
                                <table class="table table-striped table-bordered" border="1" class="auto-style2">
                                    <tr>
                                        <td class="auto-style8">OrderId</td>
                                        <td class="text-start">
                                            <asp:Label ID="orderidtxt" runat="server" CssClass="auto-style1"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">Order Date</td>
                                        <td class="auto-style3">
                                            <asp:Label ID="oderdatetxt" runat="server" CssClass="auto-style1"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style8">Address</td>
                                        <td class="text-start">
                                            <asp:Label ID="addresstxt" runat="server" CssClass="auto-style1"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <span class="auto-style6"><strong>Product Details</strong></span><br />
                                <br />
                                <div class="text-center">
                                    <asp:GridView class="table table-striped table-bordered" ID="ordergrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Height="194px" Width="437px">
                                        <Columns>
                                            <asp:BoundField DataField="ProductId" HeaderText="PId" SortExpression="ProductId">
                                            </asp:BoundField>
                                            <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" >
                                            </asp:BoundField>
                                            <asp:BoundField DataField="ProductQuantity" HeaderText="Quantity" SortExpression="ProductQuantity" >
                                            </asp:BoundField>
                                            <asp:BoundField DataField="tprice" HeaderText="Price" SortExpression="tprice" >
                                            </asp:BoundField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EcomDbconn %>" SelectCommand="SELECT [ProductId], [ProductName], [ProductQuantity], [tprice] FROM [ecom_Transactions] WHERE ([username] = @username)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                                <span class="auto-style1">Total Price: </span><strong>
                                <asp:Label ID="Tpricetxt" runat="server" CssClass="auto-style9"></asp:Label>
                                </strong>
                                <br class="auto-style1" />
                                <span class="auto-style1">E-Shopping</span><br class="auto-style1" /> <span class="auto-style1">@virtusa</span><br />
                                <br />
                                <asp:Button CssClass="btn btn-primary btn-sm m-0" ID="invoicebtn" runat="server" OnClick="invoicebtn_Click" Text="Download Invoice" Width="179px" />
                            </asp:Panel>
                        </div>




                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
