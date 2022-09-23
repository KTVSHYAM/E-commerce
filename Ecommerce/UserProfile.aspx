<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Ecommerce.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });

     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
     <div class="container">
      <div class="row">
          <div class="col-md-4">
              <img src="imgs/bg.png" />
          </div>
         <div class="col-md-6 mx-auto">
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
                           <h5 class="auto-style1">Your Profile</h5>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                   <div class="row">
                         <div class="col-md-6">
                            <label>Full Name</label>
                            <div class="form-group">
                               <asp:TextBox Class="form-control" ID="Fnametxt" runat="server" placeholder="Full Name"></asp:TextBox>
                            </div>
                         </div>
                  
                         <div class="col-md-6">
                            <label>Date of Birth</label>
                            <div class="form-group">
                               <asp:TextBox Class="form-control" ID="Dobtxt" runat="server" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                  </div>

                   <div class="row">
                         <div class="col-md-6">
                            <label>Contact No</label>
                            <div class="form-group">
                               <asp:TextBox Class="form-control" ID="Contacttxt" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                            </div>
                         </div>
                  
                         <div class="col-md-6">
                            <label>Email ID</label>
                            <div class="form-group">
                               <asp:TextBox Class="form-control" ID="EmailTxt" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                            </div>
                        </div>
                  </div>


                   <div class="row">
                         <div class="col-md-4">
                            <label>State</label>
                            <div class="form-group">
                                <asp:DropDownList Class="form-control" ID="Statetxt" runat="server">
                                    <asp:ListItem Text="Select" Value="Select" />
                                      <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                      <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                      <asp:ListItem Text="Assam" Value="Assam" />
                                      <asp:ListItem Text="Bihar" Value="Bihar" />
                                      <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                      <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                      <asp:ListItem Text="Goa" Value="Goa" />
                                      <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                      <asp:ListItem Text="Haryana" Value="Haryana" />
                                      <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                      <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                                      <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                      <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                      <asp:ListItem Text="Kerala" Value="Kerala" />
                                      <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                      <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                      <asp:ListItem Text="Manipur" Value="Manipur" />
                                      <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                      <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                      <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                </asp:DropDownList>
                            </div>
                         </div>
                  
                         <div class="col-md-4">
                            <label>City</label>
                            <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="Citytxt" runat="server" placeholder="City"></asp:TextBox>
                            </div>
                        </div>
                       <div class="col-md-4">
                            <label>Pincode</label>
                            <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="pincodetxt" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>
                  </div>

                   <div class="row">
                         <div class="col">
                            <label>Full Address</label>
                            <div class="form-group">
                               <asp:TextBox Class="form-control" ID="addresstxt" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                            </div>
                         </div>
                  </div>

                    <div class="row">
                         <div class="col">
                             <center>
                            <span class="badge bg-primary">Login Credentials</span>
                             </center>
                         </div>
                  </div>

                   <div class="row">
                         <div class="col-md-4">
                            <label>User ID</label>
                            <div class="form-group">
                               <asp:TextBox Class="form-control" ID="useridtxt" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                            </div>
                         </div>
                  
                         <div class="col-md-4">
                            <label>Password</label>
                            <div class="form-group">
                               <asp:TextBox Class="form-control" ID="oldpwdtxt" runat="server" placeholder="Password" ReadOnly="True" AutoPostBack="True"></asp:TextBox>
                            </div>
                        </div>
                       <div class="col-md-4">
                            <label>New Password</label>
                            <div class="form-group">
                               <asp:TextBox class="form-control" ID="newpwdtxt" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                  </div>


                  <div class="row">
                     <div class="col-8 mx-auto">
                         <center>
                        <div class="form-group">
                            <asp:Button class="btn btn-info btn-sm w-100 m-1 ms-0 " ID="Update" runat="server" Text="Update" BackColor="#3399FF" ForeColor="White" OnClick="Update_Click" />
                        </div>
                             </center>
                     </div>
                  </div>
               </div>
            </div>
                                     <a href="Profile.aspx" class="text-decoration-none"><i class="fa-solid fa-backward"></i> <span class="auto-style1">Back</span></a><br><br>

         </div>

          
         
             
      </div>
   </div>
</asp:Content>
