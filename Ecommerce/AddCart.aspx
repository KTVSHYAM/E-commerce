<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddCart.aspx.cs" Inherits="Ecommerce.AddCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            flex: 0 0 auto;
            width: 66.66666667%;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script text="text/javascript">
       
    </script>
     <div class="container">
        <div class="row">
            
            <div class="col-12">
                <br/>
                <div class="row">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4 style="font-family: Cambria">Cart</h4>
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
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ShowFooter="True">
                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                   <div class="container-fluid">
                                                       <div class="row">
                                                           <div class="col-lg-2">

                                                               <asp:Image Width="120" ID="Image1" runat="server" ImageUrl='<%# Eval("Pimage") %>' />

                                                           </div>
                                                           <div class="auto-style2">

                                                               <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="Large" Text='<%# Eval("Pname") %>' CssClass="auto-style1"></asp:Label>
                                                               <br class="auto-style1" />
                                                               <span class="auto-style1">Price-</span><asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("Pprice") %>' CssClass="auto-style1"></asp:Label>
                                                               <span class="auto-style1">|quantiy-</span><asp:Label ID="Label3" runat="server" Text='<%# Eval("Pquantity") %>' CssClass="auto-style1"></asp:Label>

                                                               <br />

                                                           </div>
                                                           <div class="col-lg-2">
                                                            <asp:LinkButton CssClass="btn btn-warning" ID="delete" runat="server" Text="Delete" ForeColor="White" style="font-family: Cambria" CommandArgument='<%# Eval("Productid") %>'  OnClick="delete_Click"  />

                                                           </div>
                                                       </div>
                                                   </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Ptotalprice" HeaderText="Price" SortExpression="Ptotalprice" >
                                            <HeaderStyle Font-Names="Cambria" />
                                            </asp:BoundField>
                                        </Columns>
                                        <FooterStyle Font-Names="Cambria" Font-Bold="True" Font-Size="Large" Width="100px" />
                                        <RowStyle Font-Names="Cambria" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EcomDbconn %>" SelectCommand="SELECT * FROM [ecom_cart] WHERE ([username] = @username)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col">
                                    <asp:LinkButton CssClass="btn btn-info position-absolute bottom-0 end-0" ID="Placeordeer" runat="server" Font-Names="Cambria" ForeColor="White" OnClick="Placeordeer_Click" Visible="False">Place Order</asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <center>
                <a href="Homepage.aspx"><< Back to Home</a><span class="clearfix"></span>
                <br />
                <center>
                    
        </div>
    </div>
</asp:Content>
