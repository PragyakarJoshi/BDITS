<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="RGN.ProductList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        
            <br />
            
            <h2 class="text-center" id="title"><%: Page.Title %></h2>
            <br />
        <div>
            <div id="CategoryNav" class="categoryNav">
                <div id="CategoryMenu" class="text-center">   
                    <div class="btn-group">
                        <asp:ListView ID="ListView1"  ItemType="RGN.Models.Category" runat="server" SelectMethod="GetCategories" >
                            <ItemTemplate>
                                 <a href="/ProductList.aspx?id=<%#: Item.CategoryID %>" class="btn btn-success">
                                     <%#: Item.CategoryName %>
                                 </a>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                </div>
           </div>
            <br />
            <asp:ListView ID="productList" runat="server" DataKeyNames="ProductID" GroupItemCount="5" ItemType="RGN.Models.Product" SelectMethod="GetProducts">
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <div class="col-xs-12 col-sm-4 col-md-3 text-center product-box" runat="server">
                        <br />
                        <br />
                        <a href="ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                            <img src="/Catalog/Images/<%#:Item.ImagePath%>" width="150" height="150" />
                        </a>
                        <br />
                        <br />
                        <a href="ProductDetails.aspx?productID=<%#:Item.ProductID%>" class="btn btn-link">
                            <span class="text-center">
                                <%#:Item.ProductName%>
                            </span>
                        </a>
                        <br />
                        <span>
                            <b>Price: </b><%#:String.Format("{0:c}", Item.UnitPrice)%>
                        </span>
                        <br />
                        <br />
                        <a href="/AddToCart.aspx?productID=<%#:Item.ProductID %>" class="btn btn-sm btn-primary" style="width:70%;">               
                            <span class="ProductListItem">
                                <b>Add To Cart<b>
                            </span>           
                        </a>
                        
                        <br />
                        <br />
                       
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </div>
    </section>
</asp:Content>
