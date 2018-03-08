<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="WingtipToys.ProductList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
    <section>
        <div>
            <br /> 
            <hgroup>
                <h2 class="text-center page-title"><%: Page.Title %></h2>
            </hgroup>
            <br />
            <asp:ListView ID="productList" runat="server" 
                DataKeyNames="ProductID" GroupItemCount="4"
                ItemType="WingtipToys.Models.Product" SelectMethod="GetProducts">
                <EmptyDataTemplate>
                    <h2 class="text-center">Error 404: Page does not exist</h2>
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
                    <div class="col-xs-12 col-sm-4 col-md-3 text-center" runat="server">
                        <div class="product-box">
                        <br />
                        <br />
                        <a href="ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                            <img src="/Catalog/Images/<%#:Item.ImagePath%>" width="150" height="150" />
                        </a>
                        <br />
                        <a href="ProductDetails.aspx?productID=<%#:Item.ProductID%>" class="btn btn-link">
                            <h4 class="text-center">
                                <%#:Item.ProductName%> <br />
                                <%#:String.Format("{0:c}", Item.UnitPrice)%>
                            </h4>
                        </a>


                        <a href="/AddToCart.aspx?productID=<%#:Item.ProductID %>" class="btn btn-sm btn-default" style="width:70%;">               
                            <span class="ProductListItem">
                                <b>Add To Cart &nbsp;<b>
                            </span>           
                        </a>
                        
                        <br />
                        <br />
                       </div>
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

    </div>
</asp:Content>
