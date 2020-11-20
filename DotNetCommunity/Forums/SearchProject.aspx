<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="SearchProject.aspx.cs" Inherits="DotNetCommunity.Forums.SearchProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="d-flex justify-content-center m-2">
            Enter Keyword :
            <asp:TextBox ID="TxtSearch" runat="server" CssClass="mx-2"></asp:TextBox>
            <asp:Button ID="BtnSearch" runat="server" Text="Search" OnClick="BtnSearch_Click" />
        &nbsp; OR&nbsp;
            <asp:Button ID="BtnViewAllProjects" runat="server" OnClick="BtnViewAllProjects_Click" Text="View All Projects " />
        </div>
        <br />
        <div class="d-flex justify-content-center">
            <asp:GridView ID="GvArticle" runat="server" AutoGenerateColumns="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:Label ID="LblErrorMsg" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>
