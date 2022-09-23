<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Ecommerce.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
      <div class="row">
         <div class="col-md-4 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                            <img width="100" src="imgs/loginIcon.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3 class="auto-style1">Member Login</h3>
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
                        <label>User Name
                         <asp:RequiredFieldValidator ID="UserErrMsg" runat="server" ControlToValidate="username" EnableViewState="False" ErrorMessage="Enter User name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                         </label>
                        &nbsp;<div class="form-group">
                           <asp:TextBox Class="form-control" ID="username" runat="server" placeholder="User Name"></asp:TextBox>
                        </div>
                        <label>Password&nbsp;
                         <asp:RequiredFieldValidator ID="PassErrMsg" runat="server" ControlToValidate="password" EnableViewState="False" ErrorMessage="Enter Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                         </label>
                        &nbsp;<div class="form-group">
                           <asp:TextBox Class="form-control" ID="password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-sm w-100 m-1 ms-0" ID="login" runat="server" Text="Login"  Font-Names="Cambria" Font-Size="Medium" OnClick="login_Click" />
                        </div>
                         
                        <div class="form-group">
                           <a href="UserSignUp.aspx"><input class="btn btn-danger btn-block btn-sm w-100" id="Button2" type="button" value="Sign Up" style="font-family: Cambria" /></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx" class="text-decoration-none"><< Back to Home</a>&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Credentials" runat="server" Font-Names="Cambria" ForeColor="#FF3300" Text="Invalid Credentials" Visible="False"></asp:Label>
             <br><br>
         </div>
      </div>
   </div>
</asp:Content>
