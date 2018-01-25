<%@ Page Title="Rider Gears Nepal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RGN._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="landing">
        <div class="container">
            <h1><%: Title %></h1>
            <h3>We have all your riding needs covered</h3>
            <br />
            <br />
            <a href="#start" class="btn btn-primary">Start Browsing</a>
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
    <script>
        
    </script>
</asp:Content>

