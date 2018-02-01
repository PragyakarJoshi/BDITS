<%@ Page Title="Add New Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewProduct.aspx.cs" Inherits="RGN.Admin.AddNewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="container">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="row">
        <div class="col-sm-4 col-sm-offset-4 add-box">
        <p class=" h3 text-center">Add New Product</p>
        <br />
           
        <table>
            <tr>
                <td><asp:Label ID="LabelAddCategory" runat="server">Category:</asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownAddCategory" runat="server" 
                        ItemType="RGN.Models.Category" 
                        SelectMethod="GetCategories" DataTextField="CategoryName" 
                        DataValueField="CategoryID" class="form-control input-sm">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr><td><h2></h2></td></tr>
            <tr>
                <td><asp:Label ID="LabelAddName" runat="server">Name:</asp:Label></td>
                <td>
                    <asp:TextBox ID="AddProductName" runat="server" class="form-control input-sm"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="* Product name required." ControlToValidate="AddProductName" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr><td><h2></h2></td></tr>
            <tr>
                <td><asp:Label ID="LabelAddDescription" runat="server">Description: &nbsp;</asp:Label></td>
                <td>
                    <asp:TextBox ID="AddProductDescription" runat="server" class="form-control input-sm"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="* Description required." ControlToValidate="AddProductDescription" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr><td><h2></h2></td></tr>
            <tr>
                <td><asp:Label ID="LabelAddPrice" runat="server">Price:</asp:Label></td>
                <td>
                    <asp:TextBox ID="AddProductPrice" runat="server" class="form-control input-sm"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="* Price required." ControlToValidate="AddProductPrice" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="* Must be a valid price without $." ControlToValidate="AddProductPrice" SetFocusOnError="True" Display="Dynamic" ValidationExpression="^[0-9]*(\.)?[0-9]?[0-9]?$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr><td><h2></h2></td></tr>
            <tr>
                <td><asp:Label ID="LabelAddImageFile" runat="server">Image File:</asp:Label></td>
                <td>
                    <asp:FileUpload ID="ProductImage" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="* Image path required." ControlToValidate="ProductImage" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="AddProductButton" runat="server" Text="Add Product" OnClick="AddProductButton_Click" class="btn btn-success btn-sm" CausesValidation="true" style="width:100%;"/>
            <br />
        <asp:Label ID="LabelAddStatus" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
