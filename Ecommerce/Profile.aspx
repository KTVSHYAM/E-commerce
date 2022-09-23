<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Ecommerce.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Homepage.aspx" class="text-decoration-none"><i class="fa-solid fa-backward"></i> <span class="auto-style1"> Back</span></a><br><br>

    <div class="container">
         <h2>Your Account</h2>
        <br />
        <div class="row">
            <div class="col-md-4">
               <asp:LinkButton class="btn active" ID="Products" runat="server"  Font-Names="Cambria" BackColor="White" ForeColor="Black" BorderColor="#999966" Width="200" OnClick="Products_Click"><img src="imgs/double-wall-corrugated-boxes-500x500.jpg" width="50" /> Your Orders
               </asp:LinkButton>

            </div>
            <div class="col-md-4">
               <asp:LinkButton class="btn active" ID="LinkButton1" runat="server" Font-Names="Cambria" BackColor="White" ForeColor="Black" BorderColor="#996633" Width="200" OnClick="LinkButton1_Click"><img src="imgs/images.png" width="50" /> Profile</asp:LinkButton>
            </div>
        </div>
    </div>
    <br />
    <br />
</asp:Content>
