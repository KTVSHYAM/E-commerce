<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Placeorder.aspx.cs" Inherits="Ecommerce.Placeorder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="row">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <center>
                                        <h4>Delivery Details</h4>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label>Full Name</label>
                                    <div class="form-group">
                                        <asp:TextBox Class="form-control" ID="Fnametxt" runat="server" placeholder="Full Name"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <label>Phone number</label>
                                    <div class="form-group">
                                        <asp:TextBox Class="form-control" ID="phonenumbertxt" runat="server" placeholder="Phone number"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label>Address</label>
                                    <div class="form-group">
                                        <asp:TextBox Class="form-control" ID="addresstxt" runat="server" placeholder="Address" Rows="2" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                   
                                        <div class="form-group" style="text-align: left">
                                            <asp:Button class="btn btn-info btn-sm w-100 m-1 ms-0 " ID="buyorder" runat="server" Text="Buy" BackColor="#3399FF" ForeColor="White" OnClick="buyorder_Click" />
                                        </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="AddCart.aspx" class="text-decoration-none"><i class="fa-solid fa-backward"></i><span class="auto-style1">Back</span></a><br><br>

                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
