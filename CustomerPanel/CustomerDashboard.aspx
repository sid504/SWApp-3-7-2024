<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerPanel/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="CustomerDashboard.aspx.cs" Inherits="WSWApp.CustomerPanel.CustomerDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="dropdown">
            <asp:DropDownList runat="server" ID="ddlSelectProduct" DataValueField="ProductID" DataTextField="ProductName" AutoPostBack="true"></asp:DropDownList>
        </div>
        <div class="list-group">

        </div>
        <div class="progress">
            <div runat="server" id="progressBar" class="progress-bar progress-bar-striped progress-bar-animated progress-bar-width-1" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                <p id="lblPercentage" class="mt-3" runat="server"></p>
            </div>
        </div>
        <div>
        </div>
    </div>
</asp:Content>
