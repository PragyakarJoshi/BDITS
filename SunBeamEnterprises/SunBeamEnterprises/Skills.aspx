<%@ Page Title="Skills" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Skills.aspx.cs" Inherits="SunBeamEnterprises.Skills" %>
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
                <a runat="server" onclick="openNav()" class="btn btn-primary pull-right btn-add">New Skill &nbsp;&nbsp;<span class="glyphicon glyphicon-plus"></span> </a>
            </div>
        </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" DeleteCommand="DELETE FROM &quot;SKILL&quot; WHERE &quot;SKILL_ID&quot; = :SKILL_ID" InsertCommand="INSERT INTO &quot;SKILL&quot; (&quot;SKILL_ID&quot;, &quot;SKILL_NAME&quot;) VALUES (:SKILL_ID, :SKILL_NAME)" ProviderName="<%$ ConnectionStrings:dbconnection.ProviderName %>" SelectCommand="SELECT * FROM &quot;SKILL&quot;" UpdateCommand="UPDATE &quot;SKILL&quot; SET &quot;SKILL_NAME&quot; = :SKILL_NAME WHERE &quot;SKILL_ID&quot; = :SKILL_ID">
            <DeleteParameters>
                <asp:Parameter Name="SKILL_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SKILL_ID" Type="Decimal" />
                <asp:Parameter Name="SKILL_NAME" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SKILL_NAME" Type="String" />
                <asp:Parameter Name="SKILL_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:GridView ID="SkillGridView" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="SKILL_ID" DataSourceID="SqlDataSource1" CssClass="table table-borderless table-striped table-condensed">
            <Columns>
                <asp:BoundField DataField="SKILL_ID" HeaderText="Skill ID" ReadOnly="True" SortExpression="SKILL_ID" />
                <asp:BoundField DataField="SKILL_NAME" HeaderText="Skill" SortExpression="SKILL_NAME" />
                <asp:CommandField ShowEditButton="True"  ControlStyle-CssClass="btn btn-info btn-sm" EditText="Edit  &nbsp; <span class='glyphicon glyphicon-pencil'></span>"></asp:CommandField>
                <asp:CommandField  ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger btn-sm" DeleteText="Remove &nbsp; <span class='glyphicon glyphicon-trash'></span>"></asp:CommandField>
            </Columns>
        </asp:GridView>
    </div>
    <div id="olay" class="overlay"> 
  	    <div class="overlay-content">
    	    <h3 class="overlay-title">Add New Skill</h3>
               <a href="javascript:void(0)" class="btn btn-default btn-back" onclick="closeNav()">DONE</a>
	    </div>
    </div>
</asp:Content>
