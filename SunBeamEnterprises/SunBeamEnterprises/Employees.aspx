<%@ Page Title="Employees" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="SunBeamEnterprises.Employees" %>
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
                <a runat="server" href="" class="btn btn-primary pull-right btn-add">New Employee &nbsp;&nbsp;<span class="glyphicon glyphicon-plus"></span> </a>
            </div>
        </div>
        <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" DeleteCommand="DELETE FROM &quot;EMPLOYEE&quot; WHERE &quot;EMP_ID&quot; = :EMP_ID" InsertCommand="INSERT INTO &quot;EMPLOYEE&quot; (&quot;EMP_ID&quot;, &quot;EMP_FNAME&quot;, &quot;EMP_LNAME&quot;, &quot;EMP_EMAIL&quot;, &quot;EMP_CONTACT&quot;, &quot;EMP_DOB&quot;, &quot;EMP_ADDRESS&quot;, &quot;DIVISION_ID&quot;) VALUES (:EMP_ID, :EMP_FNAME, :EMP_LNAME, :EMP_EMAIL, :EMP_CONTACT, :EMP_DOB, :EMP_ADDRESS, :DIVISION_ID)" ProviderName="<%$ ConnectionStrings:dbconnection.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEE&quot;" UpdateCommand="UPDATE &quot;EMPLOYEE&quot; SET &quot;EMP_FNAME&quot; = :EMP_FNAME, &quot;EMP_LNAME&quot; = :EMP_LNAME, &quot;EMP_EMAIL&quot; = :EMP_EMAIL, &quot;EMP_CONTACT&quot; = :EMP_CONTACT, &quot;EMP_DOB&quot; = :EMP_DOB, &quot;EMP_ADDRESS&quot; = :EMP_ADDRESS, &quot;DIVISION_ID&quot; = :DIVISION_ID WHERE &quot;EMP_ID&quot; = :EMP_ID">
                <DeleteParameters>
                    <asp:Parameter Name="EMP_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EMP_ID" Type="Decimal" />
                    <asp:Parameter Name="EMP_FNAME" Type="String" />
                    <asp:Parameter Name="EMP_LNAME" Type="String" />
                    <asp:Parameter Name="EMP_EMAIL" Type="String" />
                    <asp:Parameter Name="EMP_CONTACT" Type="String" />
                    <asp:Parameter Name="EMP_DOB" Type="DateTime" />
                    <asp:Parameter Name="EMP_ADDRESS" Type="String" />
                    <asp:Parameter Name="DIVISION_ID" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="EMP_FNAME" Type="String" />
                    <asp:Parameter Name="EMP_LNAME" Type="String" />
                    <asp:Parameter Name="EMP_EMAIL" Type="String" />
                    <asp:Parameter Name="EMP_CONTACT" Type="String" />
                    <asp:Parameter Name="EMP_DOB" Type="DateTime" />
                    <asp:Parameter Name="EMP_ADDRESS" Type="String" />
                    <asp:Parameter Name="DIVISION_ID" Type="Decimal" />
                    <asp:Parameter Name="EMP_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="EmployeeGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="EMP_ID" DataSourceID="SqlDataSource1" CssClass="table table-borderless table-striped" AllowSorting="True" BorderColor="White" BorderStyle="Dotted">
                <Columns>
                    <asp:BoundField DataField="EMP_ID" HeaderText="Employee ID" ReadOnly="True" SortExpression="EMP_ID" />
                    <asp:BoundField DataField="EMP_FNAME" HeaderText="First Name" SortExpression="EMP_FNAME" />
                    <asp:BoundField DataField="EMP_LNAME" HeaderText="Last Name" SortExpression="EMP_LNAME" />
                    <asp:BoundField DataField="EMP_EMAIL" HeaderText="Email" SortExpression="EMP_EMAIL" />
                    <asp:BoundField DataField="EMP_CONTACT" HeaderText="Contact Number" SortExpression="EMP_CONTACT" />
                    <asp:BoundField DataField="EMP_DOB" HeaderText="Date-Of-Birth" SortExpression="EMP_DOB" />
                    <asp:BoundField DataField="EMP_ADDRESS" HeaderText="Address" SortExpression="EMP_ADDRESS" />
                    <asp:BoundField DataField="DIVISION_ID" HeaderText="Division" SortExpression="DIVISION_ID" />
                </Columns>
            </asp:GridView>
        </div>
</asp:Content>
