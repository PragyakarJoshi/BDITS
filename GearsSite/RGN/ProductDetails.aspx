<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="RGN.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="container">
    <br />    <br />
        <br />
    <asp:FormView ID="productDetail" runat="server" ItemType="RGN.Models.Product" SelectMethod ="GetProduct" RenderOuterTable="false">
        <EmptyDataTemplate>
            <h2 class="text-center">Error 404: Page does not exist</h2>
            <br />
            <a href="/" class="btn btn-success center-block" style="width:200px;">Go back Home</a>        
        </EmptyDataTemplate>
        <ItemTemplate>
            <div>
                <h1><%#:Item.ProductName %></h1>
                <br />
            </div>
            <br />
            <div class="row">
	            <div class="col-sm-4">
		            <img src="/Catalog/Images/<%#:Item.ImagePath %>" style="height:300px" alt="<%#:Item.ProductName %>"/>
                </div>
                <div class="col-sm-8">
                    <br />
                    
    	            <b>Description:</b><br /><%#:Item.Description %>
		            <br />
                    <br />
                    <span><b>Price:</b>&nbsp;<%#: String.Format("{0:c}", Item.UnitPrice) %></span>
		            <br />
                    <br />
                    <span><b>Product Number:</b>&nbsp;<%#:Item.ProductID %></span>
                    <br />
		            <br />
                    <br />
                    <a href="/AddToCart.aspx?productID=<%#:Item.ProductID %>" class="btn btn-primary" style="width:200px;">               
	                    <span class="ProductListItem">
	        	            <b>Add To Cart<b>
	                    </span>           
                    </a>
                </div>
            </div>
        </ItemTemplate>
    </asp:FormView>
    </div>
</asp:Content>
