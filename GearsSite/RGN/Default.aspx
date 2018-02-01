<%@ Page Title="Rider Gears" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RGN._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="landing">
        <br />
        <div class="container">
            <%--<img src="/Catalog/logo.png" alt="Alternate Text" height="175"/>--%>
            <h1 class="custom-font animated fadeIn"><%: Title %></h1>
            <h3 class="animated fadeIn">All your riding needs covered</h3>
            <br />
            <br />
            <a href="#start" class="btn btn-primary animated fadeIn"><span class="glyphicon glyphicon-search"></span> &nbsp;&nbsp;&nbsp; Start Browsing </a>
        </div>
   </div>
    <br />
    <br />
    <br />  
   <div class="container" id="start">
       <div class="row">
           <div class="col-md-3">
               <div class="categoryBox">
                   <h2 class="text-center">Helmets</h2>
                   
                    <p class="text-center">
                        Lorem ipsum dolor, consectetur adipisicing elitdo eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim 
                    </p>
                   <br />
                    <p class="text-center">
                        <a class="btn btn-primary btn-sm" href="/ProductList.aspx?id=1">Browse Helmets &nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-right"></span></a>
                    </p>
               </div>
           </div>
           <div class="col-md-3">
               <div class="categoryBox">
                   <h2 class="text-center">Gloves</h2>
                   
                    <p class="text-center">
                        Lorem ipsum dolor, consectetur adipisicing elitdo eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                    </p>
                   <br />
                    <p class="text-center">
                        <a class="btn btn-primary btn-sm" href="/ProductList.aspx?id=2">Browse Gloves &nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-right"></span></a>
                    </p>
               </div>
           </div>
           
           <div class="col-md-3">
               <div class="categoryBox">
                   
                   <h2 class="text-center">Apparels</h2>
                   
                    <p class="text-center">
                        Lorem ipsum dolor, consectetur adipisicing elitdo eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim 
                    </p>
                   <br />
                    <p class="text-center">
                        <a class="btn btn-primary btn-sm" href="/ProductList.aspx?id=3">Browse Apparels &nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-right"></span></a>
                    </p>
               </div>
           </div>
           <div class="col-md-3">
               <div class="categoryBox">
                   
                   <h2 class="text-center">Shoes</h2>
                  
                    <p class="text-center">
                        Lorem ipsum dolor, consectetur adipisicing elitdo eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim 
                    </p>
                   <br />
                    <p class="text-center">
                        <a class="btn btn-primary btn-sm" href="/ProductList.aspx?id=4">Browse Shoes &nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-right"></span></a>
                    </p>
               </div>
           </div>
       </div>
    </div>
    <script src="/Scripts/main.js" type="text/javascript"></script>
</asp:Content>

