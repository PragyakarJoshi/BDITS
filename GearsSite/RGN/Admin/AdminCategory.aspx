<%@ Page Title="Category Admin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminCategory.aspx.cs" Inherits="RGN.Admin.AdminCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="container">
        <br />
        <h1>Category Administration</h1>
        <br />
        <div class="text-right">
            <a href="AddNewCategory" class="btn btn-info btn-sm">Add New Category</a>
        </div>
        <br />
        <asp:GridView runat="server" ID="categoryGrid" ItemType="RGN.Models.Category" DataKeyNames="CategoryID" 
            SelectMethod="GetCategories"  
            AutoGenerateColumns="false" AllowSorting="true"
            BorderColor="White" BorderStyle="Dotted" CssClass="table table-striped" GridLines="None">
                <Columns>
                    <asp:DynamicField DataField="CategoryID"/>
                    <asp:DynamicField DataField="CategoryName"/>
                    <asp:DynamicField DataField="Description"/>
                    <asp:HyperLinkField Text="View Products" DataNavigateUrlFormatString="~/ProductList.aspx?ProductID={0}" DataNavigateUrlFields="CategoryID" />
                </Columns>
        </asp:GridView>
    </div>
</asp:Content>
