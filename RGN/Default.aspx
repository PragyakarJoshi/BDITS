<%@ Page Title="Rider Gears Nepal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RGN._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container landing">
        <h1><%: Title %></h1>
        <h2>We help you find the perfect gear</h2>
        <p class="lead">We're all about rider safety. You can order any of our gears today. Each gear listing has detailed information to help you choose the right riding gear.</p>
        <br />
        <br />
        <br />
        <a href="#start" class="btn btn-success btn-success">Start Browsing</a>
   </div>
    <br />
   <div class="container" id="start">
       <div class="row">
           <div class="col-md-4">
               <div class="categoryBox">
                   <h2 class="text-center">Helmets</h2>
                   <br />
                    <p class="text-center" style="text-align:justify;">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                    </p>
                   <br />
                    <p class="text-center" >
                        <a class="btn btn-primary btn-sm" href="/ProductList.aspx?id=1">Show Helmets</a>
                    </p>
                </div>
           </div>
           <div class="col-md-4">
               <div class="categoryBox">
                   <h2 class="text-center">Gloves</h2>
                   <br />
                    <p class="text-center" style="text-align:justify;">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                    </p>
                   <br />
                    <p class="text-center">
                        <a class="btn btn-primary btn-sm" href="/ProductList.aspx?id=2">Show Gloves</a>
                    </p>
               </div>
           </div>
           <div class="col-md-4">
               <div class="categoryBox">
                   <h2 class="text-center">Apparels</h2>
                   <br />
                    <p class="text-center" style="text-align:justify;">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                    </p>
                   <br />
                    <p class="text-center">
                        <a class="btn btn-primary btn-sm" href="/ProductList.aspx?id=3">Show Apparels</a>
                    </p> 
                </div>
           </div>
       </div>
   </div>
</asp:Content>
