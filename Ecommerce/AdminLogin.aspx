<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Ecommerce.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-4 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                            <img width="150" src="imgs/adminType.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3 class="auto-style1">Admin Login</h3>
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
                        <label>Admin ID&nbsp;
                         <asp:RequiredFieldValidator ID="admintxt" runat="server" ControlToValidate="adminid" ErrorMessage="Enter Admin ID" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                         </label>
                        &nbsp;<div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="adminid" runat="server" placeholder="Admin ID"></asp:TextBox>
                        </div>
                        <label>Password&nbsp;
                         <asp:RequiredFieldValidator ID="Passerr" runat="server" ControlToValidate="password" ErrorMessage="Enter Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                         </label>
                        &nbsp;<div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-sm w-100 m-1 ms-0" ID="adminlogin" runat="server" Text="Login" OnClick="adminlogin_Click" />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
             <span class="auto-style1">
            <a href="homepage.aspx" class="text-decoration-none"><< Back to Home</a>&nbsp;&nbsp;
             <asp:Label ID="Credentialsmsg" runat="server" ForeColor="#FF3300" Text="Invalid Credentials" Visible="False"></asp:Label>
             </span><br><br>
         </div>
      </div>
   </div>
</asp:Content>
