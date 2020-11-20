<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="SearchArticle.aspx.cs" Inherits="DotNetCommunity.Forums.SearchArticle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-center">
        Enter Keyword : <asp:TextBox ID="TxtSearch" runat="server"></asp:TextBox>
        <br />
        <asp:GridView ID="GvArticle" runat="server"></asp:GridView>
    </div>
</asp:Content>
