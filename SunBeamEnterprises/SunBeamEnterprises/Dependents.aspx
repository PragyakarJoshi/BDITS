<%@ Page Title="Dependents" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Dependents.aspx.cs" Inherits="SunBeamEnterprises.Dependents" %>
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
                <a onclick="openNav()" class="btn btn-primary pull-right btn-add">New Dependent &nbsp;&nbsp;<span class="glyphicon glyphicon-plus"></span> </a>
            </div>
        </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" DeleteCommand="DELETE FROM &quot;DEPENDENT&quot; WHERE &quot;DEPENDENT_ID&quot; = :DEPENDENT_ID" InsertCommand="INSERT INTO &quot;DEPENDENT&quot; (&quot;DEPENDENT_ID&quot;, &quot;DEPENDENT_FNAME&quot;, &quot;DEPENDENT_LNAME&quot;) VALUES (:DEPENDENT_ID, :DEPENDENT_FNAME, :DEPENDENT_LNAME)" ProviderName="<%$ ConnectionStrings:dbconnection.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPENDENT&quot;" UpdateCommand="UPDATE &quot;DEPENDENT&quot; SET &quot;DEPENDENT_FNAME&quot; = :DEPENDENT_FNAME, &quot;DEPENDENT_LNAME&quot; = :DEPENDENT_LNAME WHERE &quot;DEPENDENT_ID&quot; = :DEPENDENT_ID">
            <DeleteParameters>
                <asp:Parameter Name="DEPENDENT_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="DEPENDENT_ID" Type="Decimal" />
                <asp:Parameter Name="DEPENDENT_FNAME" Type="String" />
                <asp:Parameter Name="DEPENDENT_LNAME" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="DEPENDENT_FNAME" Type="String" />
                <asp:Parameter Name="DEPENDENT_LNAME" Type="String" />
                <asp:Parameter Name="DEPENDENT_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="DependentGridView" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DEPENDENT_ID" DataSourceID="SqlDataSource1" CssClass="table table-striped table-borderless table-condensed" ShowHeaderWhenEmpty="True">
            <Columns>
                <asp:BoundField DataField="DEPENDENT_ID" HeaderText="Dependent ID" ReadOnly="True" SortExpression="DEPENDENT_ID" />
                <asp:BoundField DataField="DEPENDENT_FNAME" HeaderText="First Name" SortExpression="DEPENDENT_FNAME" />
                <asp:BoundField DataField="DEPENDENT_LNAME" HeaderText="Last Name" SortExpression="DEPENDENT_LNAME" />
                <asp:CommandField ShowEditButton="True"  ControlStyle-CssClass="btn btn-info btn-sm" EditText="Edit  &nbsp; <span class='glyphicon glyphicon-pencil'></span>"></asp:CommandField>
                <asp:CommandField  ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger btn-sm" DeleteText="Remove &nbsp; <span class='glyphicon glyphicon-trash'></span>"></asp:CommandField>
            </Columns>
        </asp:GridView>
    </div>
    <div id="olay" class="overlay"> 
  	    <div class="overlay-content">
    	    <h3 class="overlay-title">Add New Dependent</h3>
               <a href="javascript:void(0)" class="btn btn-default btn-back" onclick="closeNav()">DONE</a>
	    </div>
    </div>
    
</asp:Content>
