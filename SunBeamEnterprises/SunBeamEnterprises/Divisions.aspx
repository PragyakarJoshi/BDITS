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
                <a runat="server" onclick="openNav()" class="btn btn-primary pull-right btn-add">New Division &nbsp;&nbsp;<span class="glyphicon glyphicon-plus"></span> </a>
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
        <asp:GridView ID="DivisionGridView" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DIVISION_ID" DataSourceID="SqlDataSource1" CssClass="table table-borderless table-striped table-condensed">
            <Columns>
                <asp:BoundField DataField="DIVISION_ID" HeaderText="ID" ReadOnly="True" SortExpression="DIVISION_ID" />
                <asp:BoundField DataField="DIVISION_NAME" HeaderText="Division Name" SortExpression="DIVISION_NAME" />
                <asp:BoundField DataField="DIVISION_CONTACT" HeaderText="Contact Number" SortExpression="DIVISION_CONTACT" />
                <asp:BoundField DataField="MANAGER_ID" HeaderText="Manager" SortExpression="MANAGER_ID" />
                <asp:CommandField ShowEditButton="True"  ControlStyle-CssClass="btn btn-info btn-sm" EditText="Edit  &nbsp; <span class='glyphicon glyphicon-pencil'></span>"></asp:CommandField>
                <asp:CommandField  ShowDeleteButton="True" ControlStyle-CssClass="btn btn-warning btn-sm" DeleteText="Remove &nbsp; <span class='glyphicon glyphicon-trash'></span>"></asp:CommandField>
            </Columns>
        </asp:GridView>
        
        </div>
    <div id="olay" class="overlay"> 
  	    <div class="overlay-content">
    	    <h3 class="overlay-title">Add New Division</h3>
              <br />
              <asp:FormView ID="FormView1" runat="server" DataKeyNames="DIVISION_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <InsertItemTemplate>
                <asp:TextBox ID="DIVISION_IDTextBox" runat="server" Text='<%# Bind("DIVISION_ID") %>' class="form-control" placeholder="Division ID"/>
                <br />
                <asp:TextBox ID="DIVISION_NAMETextBox" runat="server" Text='<%# Bind("DIVISION_NAME") %>' class="form-control" placeholder="Division Name" />
                <br />
                <asp:TextBox ID="DIVISION_CONTACTTextBox" runat="server" Text='<%# Bind("DIVISION_CONTACT") %>' class="form-control" placeholder="Contact Number"/>
                <br />
                <asp:TextBox ID="MANAGER_IDTextBox" runat="server" Text='<%# Bind("MANAGER_ID") %>' class="form-control" placeholder="Manager"/>
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert &nbsp; <span class='glyphicon glyphicon-ok'></span>" CssClass="btn btn-info btn-form"/>   
                 <a href="javascript:void(0)" class="btn btn-warning btn-form" onclick="closeNav()">Cancel &nbsp; <span class='glyphicon glyphicon-remove'></span> </a>  
            </InsertItemTemplate>
        </asp:FormView>
               
	    </div>
    </div>
    

</asp:Content>
