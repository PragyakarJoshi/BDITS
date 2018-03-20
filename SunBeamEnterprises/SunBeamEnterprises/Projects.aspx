<%@ Page Title="Projects" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="SunBeamEnterprises.Projects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="container">
        <br />
        <br />
        <div class="row">
            <div class="col-md-6">
                <p class="page-title"><%: Page.Title %></p>
            </div>
            <div class="col-md-6">
                <a runat="server" onclick="openNav()" class="btn btn-primary pull-right btn-add">New Project &nbsp;&nbsp;<span class="glyphicon glyphicon-plus"></span> </a>
            </div>
        </div>
        <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" ProviderName="<%$ ConnectionStrings:dbconnection.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECT&quot;" DeleteCommand="DELETE FROM &quot;PROJECT&quot; WHERE &quot;PROJECT_ID&quot; = :PROJECT_ID" InsertCommand="INSERT INTO &quot;PROJECT&quot; (&quot;PROJECT_ID&quot;, &quot;PROJECT_NAME&quot;, &quot;PROJECT_STATUS&quot;, &quot;PROJECT_START_DATE&quot;, &quot;PROJECT_END_DATE&quot;, &quot;PROJECT_CLIENT&quot;, &quot;DIVISION_ID&quot;) VALUES (:PROJECT_ID, :PROJECT_NAME, :PROJECT_STATUS, :PROJECT_START_DATE, :PROJECT_END_DATE, :PROJECT_CLIENT, :DIVISION_ID)" UpdateCommand="UPDATE &quot;PROJECT&quot; SET &quot;PROJECT_NAME&quot; = :PROJECT_NAME, &quot;PROJECT_STATUS&quot; = :PROJECT_STATUS, &quot;PROJECT_START_DATE&quot; = :PROJECT_START_DATE, &quot;PROJECT_END_DATE&quot; = :PROJECT_END_DATE, &quot;PROJECT_CLIENT&quot; = :PROJECT_CLIENT, &quot;DIVISION_ID&quot; = :DIVISION_ID WHERE &quot;PROJECT_ID&quot; = :PROJECT_ID">
                <DeleteParameters>
                    <asp:Parameter Name="PROJECT_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PROJECT_ID" Type="Decimal" />
                    <asp:Parameter Name="PROJECT_NAME" Type="String" />
                    <asp:Parameter Name="PROJECT_STATUS" Type="String" />
                    <asp:Parameter Name="PROJECT_START_DATE" Type="DateTime"  />
                    <asp:Parameter Name="PROJECT_END_DATE" Type="DateTime" />
                    <asp:Parameter Name="PROJECT_CLIENT" Type="String" />
                    <asp:Parameter Name="DIVISION_ID" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PROJECT_NAME" Type="String" />
                    <asp:Parameter Name="PROJECT_STATUS" Type="String" />
                    <asp:Parameter Name="PROJECT_START_DATE" Type="DateTime" />
                    <asp:Parameter Name="PROJECT_END_DATE" Type="DateTime" />
                    <asp:Parameter Name="PROJECT_CLIENT" Type="String" />
                    <asp:Parameter Name="DIVISION_ID" Type="Decimal" />
                    <asp:Parameter Name="PROJECT_ID" Type="Decimal" />
                </UpdateParameters>
        </asp:SqlDataSource>
            <asp:GridView ID="ProjectGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="PROJECT_ID" DataSourceID="SqlDataSource1" CssClass="table table-borderless table-striped table-condensed" AllowSorting="True"  >
                <Columns>
                    <asp:BoundField DataField="PROJECT_ID" HeaderText="ID" ReadOnly="true" SortExpression="PROJECT_ID" />
                    <asp:BoundField DataField="PROJECT_NAME" HeaderText="Project Name" SortExpression="PROJECT_NAME" />
                    <asp:BoundField DataField="PROJECT_STATUS" HeaderText="Status" SortExpression="PROJECT_STATUS" />
                    <asp:BoundField DataField="PROJECT_START_DATE" HeaderText="Start Date" SortExpression="PROJECT_START_DATE" DataFormatString="{0:d}"/>
                    <asp:BoundField DataField="PROJECT_END_DATE" HeaderText="End Date" SortExpression="PROJECT_END_DATE" DataFormatString="{0:d}"/>
                    <asp:BoundField DataField="PROJECT_CLIENT" HeaderText="Client" SortExpression="PROJECT_CLIENT" />
                    <asp:BoundField DataField="DIVISION_ID" HeaderText="Division" SortExpression="DIVISION_ID" />
                    <asp:CommandField ShowEditButton="True"  ControlStyle-CssClass="btn btn-info btn-sm" EditText="Edit  &nbsp; <span class='glyphicon glyphicon-pencil'></span>"></asp:CommandField>
                    <asp:CommandField  ShowDeleteButton="True" ControlStyle-CssClass="btn btn-warning btn-sm" DeleteText="Remove &nbsp; <span class='glyphicon glyphicon-trash'></span>"></asp:CommandField>
                </Columns>
            </asp:GridView>
        
        </div>
    <div id="olay" class="overlay"> 
  	    <div class="overlay-content">
    	    <h3 class="overlay-title">Add New Project</h3>
              <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="PROJECT_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <InsertItemTemplate>
                
                <asp:TextBox ID="PROJECT_IDTextBox" runat="server" Text='<%# Bind("PROJECT_ID") %>' class="form-control" placeholder="Project ID"/>
                <br />
                
                <asp:TextBox ID="PROJECT_NAMETextBox" runat="server" Text='<%# Bind("PROJECT_NAME") %>' class="form-control" placeholder="Project Name" />
                <br />
                
                <asp:TextBox ID="PROJECT_STATUSTextBox" runat="server" Text='<%# Bind("PROJECT_STATUS") %>' class="form-control" placeholder="Project Status"/>
                <br />
                
                <asp:TextBox ID="PROJECT_START_DATETextBox" runat="server" Text='<%# Bind("PROJECT_START_DATE") %>' class="form-control" placeholder="Start Date"/>
                <br />
                
                <asp:TextBox ID="PROJECT_END_DATETextBox" runat="server" Text='<%# Bind("PROJECT_END_DATE") %>' class="form-control" placeholder="End Date"/>
                <br />
                
                <asp:TextBox ID="PROJECT_CLIENTTextBox" runat="server" Text='<%# Bind("PROJECT_CLIENT") %>' class="form-control" placeholder="Client Name"/>
                <br />
                
                <asp:TextBox ID="DIVISION_IDTextBox" runat="server" Text='<%# Bind("DIVISION_ID") %>' class="form-control" placeholder="Division"/>
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert &nbsp; <span class='glyphicon glyphicon-ok'></span>" CssClass="btn btn-info btn-form"/>   
                 <a href="javascript:void(0)" class="btn btn-warning btn-form" onclick="closeNav()">Cancel &nbsp; <span class='glyphicon glyphicon-remove'></span> </a>  
            </InsertItemTemplate>
        </asp:FormView>
	    </div>
    </div>
</asp:Content>
