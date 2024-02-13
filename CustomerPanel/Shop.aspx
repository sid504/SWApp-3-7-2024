<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerPanel/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="WSWApp.CustomerPanel.Shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="background-color: #eee;">
        <div class="container-fluid d-flex flex-wrap align-items-center justify-content-center pt-4 pb-4">
            
            <asp:DataList runat="server" ID="lstView" EnableViewState="true" OnItemCommand="lstView_ItemCommand" DataKeyNames="ID" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <div class="card" style="width: 19rem;">
                        <img src='<%#Eval("ProductImagePath")%>' class="card-img-top " style="width: 300px; height: 200px" alt="" />
                        <div class="card-body">
                            <asp:Label ID="lbl" runat="server" Font-Bold="true" Font-Size="Large" CssClass="card-title" Text='<%#Eval("ProductName")%>'></asp:Label>
                            <hr class="my-0" />
                            <div class="row m-0 p-0">
                                <div class="col-md-6">
                                    <label class="card-text">Quantity</label><br />
                                    <asp:DropDownList ID="ddlQuantity" runat="server" CssClass="form-control">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-6">
                                    <label class="card-text">Metric</label>
                                    <asp:DropDownList ID="ddlMetric" runat="server" CssClass="form-control">
                                        <asp:ListItem>Gram</asp:ListItem>
                                        <asp:ListItem>Kilogram</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="p-2">
                                <asp:Button runat="server" ID="Button2" Text="Add to Cart" CssClass="form-control btn-success" CommandName="AddtoCart" BackColor="#FFA41C" BorderColor="#FF8F00" />
                            </div>
                            <div class="p-2">
                                <asp:Button runat="server" ID="Button3" Text="Buy Now" CommandName="Buy" CssClass="form-control btn-success" />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </section>
</asp:Content>
