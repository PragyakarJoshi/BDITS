﻿<%@ Page Title="Admin   " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="RGN.Admin.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <br />
        <h1>Administration</h1>
        <h4>You have the power, use it wisely.</h4>
        <hr />
        <br />
        <div class="row">
            <div class="col-sm-4">
                <a href="AdminProduct" class="cat-box">
                    <div class="well admin-category">
                        <h3 class="text-center">Products</h3>
                    </div>
                </a>
            </div>
            <div class="col-sm-4">
                <a href="AdminCategory" class="">
                    <div class="well admin-category">
                        <h3 class="text-center">Categories</h3>
                    </div>
                </a>
            </div>
            <div class="col-sm-4">
                <a href="AdminUsers" class="">
                    <div class="well admin-category">
                        <h3 class="text-center">Users</h3>
                    </div>
                </a>
            </div>
        </div>
    </div>
</asp:Content>