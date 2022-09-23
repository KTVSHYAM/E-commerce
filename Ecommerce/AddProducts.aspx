<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="Ecommerce.AddProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });


        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <style type="text/css">
        .auto-style2 {
            flex: 0 0 auto;
            width: 100%;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
     <div class="container">
      <div class="row">
         <div class="col-md-5 mx-auto">

            <div class="card">
               <div class="card-body">

                   <div class="row">
                       <div class="col">
                           <center>
                               <h4 style="font-family:Cambria">Products</h4>
                           </center>
                       </div>

                   </div>

                  <div class="row">
                     <div class="col">
                        <center>
                            <img id="imgview" Width="120" src="imgs/products.png" />
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
                         <asp:RequiredFieldValidator ID="imageerr" runat="server" ControlToValidate="productimage" ErrorMessage="Please Upload the Image"></asp:RequiredFieldValidator>
                         <asp:FileUpload onchange="readURL(this)" CssClass="form-control" ID="productimage" runat="server" />
                     </div>
                  </div>

                   <div class="row">
                         <div class="col-md-4">
                            <label><span class="auto-style1">Product</span>ID
                             </label>
&nbsp;<div class="form-group">
                            <div class="input-group">
                               <asp:TextBox Class="form-control ms-0 m-0" ID="productid" runat="server" placeholder="Product Id"></asp:TextBox>
                                <asp:Button class="btn btn-primary btn-sm m-0" ID="Go" runat="server" Text="GO" OnClick="Go_Click" CausesValidation="False" />
                                
                                
                            </div>
                             </div>
                         </div>
                  
                       <div class="col-md-8">
                           <label>
                               Product Name <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Product Name" Font-Names="Cambria" ForeColor="Red" ControlToValidate="productname"></asp:RequiredFieldValidator>
                           </label>
                           &nbsp;<div class="form-group">
                               <asp:TextBox Class="form-control" ID="productname" runat="server" placeholder="Product Name"></asp:TextBox>
                           </div>
                       </div>
                  </div> 
                
                       

                   <div class="row">
                       <div class="col-md-4">
                            <label>Brand
                            </label>
&nbsp;<div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="Brand" runat="server" placeholder="Brand" ></asp:TextBox>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <label>Stock
                             </label>
&nbsp;<div class="form-group">
                               <asp:TextBox Class="form-control" ID="Stock" runat="server" placeholder="Stock" TextMode="Number"></asp:TextBox>
                            </div>
                         </div>
                       <div class="col-md-4">
                            <label>Price
                            </label>
                            &nbsp;<div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="Price" runat="server" placeholder="Price" TextMode="Number"></asp:TextBox>
                            </div>
                           </div>
                  </div>
                   <div class="row">
                       <div class="col-md-4">
                           <label>Category
                           </label>
                           &nbsp;<asp:DropDownList CssClass="form-control" ID="category" runat="server" DataSourceID="SqlDataSource3" DataTextField="CategoryName" DataValueField="CategoryName"></asp:DropDownList>
                           <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:EcomDbconn %>" SelectCommand="SELECT * FROM [ecom_Category]"></asp:SqlDataSource>
                       </div>
                   </div>
                   <div class="row">
                       <div class="col-12">
                           <label>Product Description
                           </label>
                           &nbsp;<div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="Description" runat="server" placeholder="Product Descriptiom" TextMode="MultiLine"></asp:TextBox>
                            </div>
                       </div>
                   </div>
                   
                  <div class="row">
                     <div class="col-4 mx-auto">
                         
                         <asp:Button class="btn btn-success btn-sm m-1 ms-0 w-100  " ID="Add" runat="server" Text="Add" BackColor="#009933" ForeColor="White" Font-Names="Cambria" OnClick="Add_Click" />
                     </div>

                      <div class="col-4 mx-auto">
                            <asp:Button class="btn btn-info btn-sm w-100 m-1 ms-0 " ID="Update" runat="server" Text="Update" BackColor="#3399FF" ForeColor="White" OnClick="Update_Click" CausesValidation="False" />

                     </div>

                      <div class="col-4 mx-auto">
                            <asp:Button class="btn btn-danger btn-sm w-100 m-1 ms-0 " ID="Delete" runat="server" Text="Delete" BackColor="#CC3300" ForeColor="White" OnClick="Delete_Click" CausesValidation="False" />
                          
                     </div>
                      
                  </div>
                   <asp:Label ID="productiderr" runat="server" Text="Product ID already exit" Font-Names="Cambria" ForeColor="Red" Visible="False"></asp:Label>
                   
               </div>
            </div>
            
         </div>
         


    <div class="col-md-7">
        <div class="card">
        <div class="card-body">

            <div class="row">
                <div class="col">
                    <center>
                <h4 style="font-family:Cambria">Product List</h4>
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
                    <asp:GridView class="table table-striped table-bordered align-content-end" ID="ProductGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-lg-10">
                                                <div class="row">
                                                    <div class="auto-style2">

                                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" Text='<%# Eval("Pname") %>'></asp:Label>

                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="auto-style2">

                                                        by-<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Cambria" Text='<%# Eval("Pbrand") %>'></asp:Label>
                                                        |Stock-<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Cambria" Text='<%# Eval("Pstock") %>'></asp:Label>

                                                        |<asp:Label ID="Label5" runat="server" Text='<%# Eval("Pcategory") %>'></asp:Label>

                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="auto-style2">

                                                        Price-<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="Large" Text='<%# Eval("Pprice") %>'></asp:Label>

                                                    </div>
                                                </div>

                                            </div>
                                            <div class="col-lg-2">
                                                <asp:Image CssClass="img-fluid p-0" Width="100" ID="Image1" runat="server" ImageUrl='<%# Eval("Pimage") %>' />
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EcomDbconn %>" SelectCommand="SELECT * FROM [ecom_products]"></asp:SqlDataSource>
                </div>
            </div>

        </div>
    </div>
    </div>
             
      </div>
   </div>
</asp:Content>
