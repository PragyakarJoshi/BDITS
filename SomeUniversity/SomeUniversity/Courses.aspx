<%@ Page Title="Courses Offered" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="SomeUniversity.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="container">
        <h2>Courses Offered</h2>
        <br />
        <asp:GridView runat="server" ID="courseGrid" ItemType="SomeUniversity.Models.Course" DataKeyNames="CourseID" SelectMethod="GetCourses" AutoGenerateColumns="false" AllowSorting="true" CssClass="table table-striped" BorderColor="White" BorderStyle="Dotted" GridLines="None">
            <Columns>
                <asp:DynamicField DataField="Title" />
                <asp:DynamicField DataField="Credits" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
