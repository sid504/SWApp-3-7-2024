<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WSWApp.MainPages.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.3/components/blogs/blog-3/assets/css/blog-3.css">
    <!-- Javascript Files: Vendors -->
    <script src="https://unpkg.com/jquery@3.6.1/dist/jquery.min.js"></script>
    <script src="https://unpkg.com/isotope-layout@3.0.6/dist/isotope.pkgd.min.js"></script>
    <script src="https://unpkg.com/isotope-packery@2.0.1/packery-mode.pkgd.min.js"></script>
    <script src="https://unpkg.com/imagesloaded@5.0.0/imagesloaded.pkgd.min.js"></script>

    <!-- Javascript Files: Controllers -->
    <script src="https://unpkg.com/bs-brain@2.0.3/components/projects/project-1/assets/controller/project-1.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <section class="py-3 py-md-5">
    <div class="container-fluid">
           <div class="container">
            <div class="row justify-content-md-center">
                <div class="col-12 col-md-10 col-lg-8 col-xl-7 col-xxl-6">
                    <h2 class="mb-4 display-5 text-center">Our Products</h2>
                    <p class="text-secondary mb-5 text-center lead fs-4"></p>
                    <hr class="w-50 mx-auto mb-5 mb-xl-9 border-dark-subtle">
                </div>
            </div>
        </div>
        <div class="d-flex flex-wrap align-items-center justify-content-center"> <!-- Add flexbox classes for horizontal display -->
            <asp:ListView runat="server" ID="lstView" DataKeyNames="ID">
                <ItemTemplate>
                    <div class="mr-3 mb-3"> <!-- Add margin for spacing between items -->
                        <figure class="rounded rounded-4 overflow-hidden bsb-overlay-hover" style="width:200px;height:200px;">
                            <a href="login.aspx">
                                <img class="img-fluid bsb-scale-up bsb-hover-scale" loading="lazy" src='<%#Eval("ProductImagePath")%>' alt="" style="width: 200px;">
                            </a>
                            <figcaption>
                                <h6 class="text-white bsb-hover-fadeInLeft small font-weight-light">
                                    <asp:Label runat="server" ID="Label4" Text='<%#Eval("ProductName")%>'></asp:Label>
                                </h6>
                                <div class="text-white bsb-hover-fadeInRight">
                                    <asp:Label runat="server" ID="Label1" >Rs.<%#Eval("Price")%>/-</asp:Label><br />
                                    <asp:Button runat="server" CssClass="form-control" BackColor="Green" ID="btnShop3" Text="Shop" />
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</section>
</asp:Content>
