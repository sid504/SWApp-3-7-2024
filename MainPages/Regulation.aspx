<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Regulation.aspx.cs" Inherits="WSWApp.MainPages.Regulation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.3/components/blogs/blog-3/assets/css/blog-3.css">
    <link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.3/components/facts/fact-4/assets/css/fact-4.css" />
    <link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.3/tutorials/timelines/timeline-3/assets/css/timeline-3.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="py-3 py-md-5 py-xl-8">
        <div class="container">
            <div class="row justify-content-xl-center">
                <div class="col-12 col-xl-10">
                    <h2 class="h1">Our guarantees</h2>
                    <p class="lead fs-4 mb-3 mb-xl-5">
                        SWTrade is a licensed and regulated by the Financial Services Commission. SWTrade is committed to providing the highest quality of service. Our clients are covered by deposit insurance and have access to comprehensive support and prompt resolution of any issues concerning their financial interactions with SWTrade.
                    </p>
                    <asp:Button CssClass="btn btn-success" runat="server" ID="btnFDLicense" Text="Financial Dealer License" />
                </div>
            </div>
        </div>
    </section>
</asp:Content>
