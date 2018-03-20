<%@ Page Title="Tasks" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Tasks.aspx.cs" Inherits="SunBeamEnterprises.Tasks" %>
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
                <a runat="server" href="" class="btn btn-primary pull-right btn-add">New Task &nbsp;&nbsp;<span class="glyphicon glyphicon-plus"></span> </a>
            </div>
        </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" DeleteCommand="DELETE FROM &quot;TASK&quot; WHERE &quot;TASK_ID&quot; = :TASK_ID" InsertCommand="INSERT INTO &quot;TASK&quot; (&quot;TASK_ID&quot;, &quot;TASK_NAME&quot;) VALUES (:TASK_ID, :TASK_NAME)" ProviderName="<%$ ConnectionStrings:dbconnection.ProviderName %>" SelectCommand="SELECT * FROM &quot;TASK&quot;" UpdateCommand="UPDATE &quot;TASK&quot; SET &quot;TASK_NAME&quot; = :TASK_NAME WHERE &quot;TASK_ID&quot; = :TASK_ID">
            <DeleteParameters>
                <asp:Parameter Name="TASK_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TASK_ID" Type="Decimal" />
                <asp:Parameter Name="TASK_NAME" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TASK_NAME" Type="String" />
                <asp:Parameter Name="TASK_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TASK_ID" DataSourceID="SqlDataSource1" CssClass="table table-borderless table-striped " AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="TASK_ID" HeaderText="Task ID" ReadOnly="True" SortExpression="TASK_ID" />
                <asp:BoundField DataField="TASK_NAME" HeaderText="Task Name" SortExpression="TASK_NAME" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
