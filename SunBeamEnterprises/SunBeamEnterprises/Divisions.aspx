<%@ Page Title="Divisions" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Divisions.aspx.cs" Inherits="SunBeamEnterprises.Divisions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="container">
        <br />
        <br />
        <div class="row">
            <div class="col-md-6">
                <p class="page-title"><%: Page.Title %></p>
            </div>
            <div class="col-md-6">
                <a runat="server" href="" class="btn btn-primary pull-right btn-add">New Division &nbsp;&nbsp;<span class="glyphicon glyphicon-plus"></span> </a>
            </div>
        </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" DeleteCommand="DELETE FROM &quot;DIVISION&quot; WHERE &quot;DIVISION_ID&quot; = :DIVISION_ID" InsertCommand="INSERT INTO &quot;DIVISION&quot; (&quot;DIVISION_ID&quot;, &quot;DIVISION_NAME&quot;, &quot;DIVISION_CONTACT&quot;, &quot;MANAGER_ID&quot;) VALUES (:DIVISION_ID, :DIVISION_NAME, :DIVISION_CONTACT, :MANAGER_ID)" ProviderName="<%$ ConnectionStrings:dbconnection.ProviderName %>" SelectCommand="SELECT * FROM &quot;DIVISION&quot;" UpdateCommand="UPDATE &quot;DIVISION&quot; SET &quot;DIVISION_NAME&quot; = :DIVISION_NAME, &quot;DIVISION_CONTACT&quot; = :DIVISION_CONTACT, &quot;MANAGER_ID&quot; = :MANAGER_ID WHERE &quot;DIVISION_ID&quot; = :DIVISION_ID">
            <DeleteParameters>
                <asp:Parameter Name="DIVISION_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="DIVISION_ID" Type="Decimal" />
                <asp:Parameter Name="DIVISION_NAME" Type="String" />
                <asp:Parameter Name="DIVISION_CONTACT" Type="String" />
                <asp:Parameter Name="MANAGER_ID" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="DIVISION_NAME" Type="String" />
                <asp:Parameter Name="DIVISION_CONTACT" Type="String" />
                <asp:Parameter Name="MANAGER_ID" Type="Decimal" />
                <asp:Parameter Name="DIVISION_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="DivisionGridView" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DIVISION_ID" DataSourceID="SqlDataSource1" CssClass="table table-borderless table-striped ">
            <Columns>
                <asp:BoundField DataField="DIVISION_ID" HeaderText="Division ID" ReadOnly="True" SortExpression="DIVISION_ID" />
                <asp:BoundField DataField="DIVISION_NAME" HeaderText="Division Name" SortExpression="DIVISION_NAME" />
                <asp:BoundField DataField="DIVISION_CONTACT" HeaderText="Contact Number" SortExpression="DIVISION_CONTACT" />
                <asp:BoundField DataField="MANAGER_ID" HeaderText="Division Manager" SortExpression="MANAGER_ID" />
            </Columns>
        </asp:GridView>
        </div>
    
</asp:Content>
