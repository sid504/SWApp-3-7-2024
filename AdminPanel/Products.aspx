<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WSWApp.AdminPanel.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section title="AddProduct">
        <div class="container form-control">
            <div class="row">
                <asp:GridView ID="GridView1" runat="server" OnRowEditing="OnRowEditing" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" EmptyDataText="There are no data records to display.">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="Product ID" ReadOnly="true" />
                        <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                        <asp:BoundField DataField="ProductDesc" HeaderText="Product Description" />
                        <asp:BoundField DataField="TotalProductVolume" HeaderText="Total Volume" />
                        <asp:BoundField DataField="AvailableProductVolume" HeaderText="Available Volume" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button Text="Edit" runat="server" CommandName="Edit" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Button Text="Update" runat="server" OnClick="OnUpdate" />
                                <asp:Button Text="Cancel" runat="server" OnClick="OnCancel" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div><br />
               <h3 class="d-flex h2 align-items-center justify-content-center">Add New Product</h3>
            <div class="row">
                <div class="d-flex align-items-center justify-content-center">
                    <div class="row col-6">
                        <div class="col-12">
                            <label class="form-label">Product Name</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtProductName"></asp:TextBox>
                        </div>
                        <div class="col-12">
                            <label class="form-label">Product Description</label><asp:TextBox runat="server" CssClass="form-control" ID="txtPD"></asp:TextBox>
                        </div>
                        <div class="col-12">
                            <label class="form-label">Total Volume</label><asp:TextBox runat="server" CssClass="form-control" ID="txtTV"></asp:TextBox>
                        </div>
                        <div class="col-12">
                            <label class="form-label">Available Volume</label><asp:TextBox runat="server" CssClass="form-control" ID="txtTAV"></asp:TextBox>
                        </div>
                        <div class="col-12 pt-2">
                            <asp:Button runat="server" ID="btnAdd" Text="Add" CssClass="form-control bg-success-subtle" OnClick="btnAdd_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
