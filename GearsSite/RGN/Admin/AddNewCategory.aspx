<%@ Page Title="Add Category" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewCategory.aspx.cs" Inherits="RGN.Admin.AddNewCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <br />
        <h3>Add New Category</h3>
        <br />
        <asp:FormView runat="server" ID="addCategoryForm"
            ItemType="RGN.Models.Category" 
            InsertMethod="addCategoryForm_InsertItem" DefaultMode="Insert"
            RenderOuterTable="false" OnItemInserted="addStudentForm_ItemInserted" >
            <InsertItemTemplate>
                <asp:DynamicEntity runat="server" Mode="Insert" />
                <br />
                <asp:Button runat="server" Text="Insert" CommandName="Insert" CssClass="btn btn-primary btn-sm" />
                <asp:Button runat="server" Text="Cancel" CausesValidation="false" OnClick="cancelButton_Click" CssClass ="btn btn-default btn-sm" />    
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
