<%@ Page Title="Admin   " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="RGN.Admin.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
    <br />
    <h1>Administration</h1>
    <hr />
        <div class="row">
            <div class="col-sm-6">
                <h3>Add Product:</h3>
                <table>
                    <tr>
                        <td><asp:Label ID="LabelAddCategory" runat="server" CssClass="h5">Category: &nbsp; &nbsp;&nbsp;&nbsp;</asp:Label></td>
                        <td>
                            <asp:DropDownList ID="DropDownAddCategory" runat="server" 
                                ItemType="RGN.Models.Category" 
                                SelectMethod="GetCategories" DataTextField="CategoryName" 
                                DataValueField="CategoryID" class="form-control input-sm">
                            </asp:DropDownList>
                        </td>
                        
                    </tr>
                    
                    <tr>
                        <td><asp:Label ID="LabelAddName" runat="server" CssClass="h5">Name:</asp:Label></td>
                        <td>
                            <asp:TextBox ID="AddProductName" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="* Product name required." ControlToValidate="AddProductName" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="LabelAddDescription" runat="server" CssClass="h5">Description:</asp:Label></td>
                        <td>
                            <asp:TextBox ID="AddProductDescription" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="* Description required." ControlToValidate="AddProductDescription" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td><asp:Label ID="LabelAddPrice" runat="server" CssClass="h5">Price:</asp:Label></td>
                        <td>
                            <asp:TextBox ID="AddProductPrice" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="* Price required." ControlToValidate="AddProductPrice" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="* Must be a valid price without $." ControlToValidate="AddProductPrice" SetFocusOnError="True" Display="Dynamic" ValidationExpression="^[0-9]*(\.)?[0-9]?[0-9]?$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td><asp:Label ID="LabelAddImageFile" runat="server" CssClass="h5">Image File:</asp:Label></td>
                        <td>
                            <asp:FileUpload ID="ProductImage" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="* Image path required." ControlToValidate="ProductImage" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <p></p>
                <p></p>
                <asp:Button ID="AddProductButton" runat="server" Text="Add Product" OnClick="AddProductButton_Click"  CausesValidation="true" CssClass="btn btn-primary btn-sm"/>
                <asp:Label ID="LabelAddStatus" runat="server" Text=""></asp:Label>
            </div>
            <div class="col-sm-6">
                <p></p>
                <h3>Remove Product:</h3>
                <table>
                    <tr>
                        <td><asp:Label ID="LabelRemoveProduct" runat="server" CssClass="h5">Product: &nbsp;&nbsp;&nbsp;&nbsp;</asp:Label></td>
                        <td><asp:DropDownList ID="DropDownRemoveProduct" runat="server" ItemType="RGN.Models.Product" 
                                SelectMethod="GetProducts" AppendDataBoundItems="true" 
                                DataTextField="ProductName" DataValueField="ProductID" 
                                class="form-control input-sm">
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <p></p>
                <asp:Button ID="RemoveProductButton" runat="server" Text="Remove Product" OnClick="RemoveProductButton_Click" CausesValidation="false" CssClass="btn btn-danger btn-sm"/>
                <br />
                <asp:Label ID="LabelRemoveStatus" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
