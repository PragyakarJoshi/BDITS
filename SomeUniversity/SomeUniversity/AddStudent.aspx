<%@ Page Title="Add New Student" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="SomeUniversity.AddStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <asp:ValidationSummary ShowModelStateErrors="true" runat="server" />
    <asp:FormView runat="server" ID="addStudentForm"
        ItemType="SomeUniversity.Models.Student" 
        InsertMethod="addStudentForm_InsertItem" DefaultMode="Insert"
        RenderOuterTable="false" OnItemInserted="addStudentForm_ItemInserted" >
        <InsertItemTemplate>
            <asp:DynamicEntity runat="server" Mode="Insert" />
            <br />
            <asp:Button runat="server" Text="Insert" CommandName="Insert" CssClass="btn btn-primary btn-sm" />
            <asp:Button runat="server" Text="Cancel" CausesValidation="false" OnClick="cancelButton_Click" CssClass ="btn btn-default btn-sm" />    
        </InsertItemTemplate>
    </asp:FormView>
</asp:Content>
