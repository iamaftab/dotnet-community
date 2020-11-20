<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="DotNetCommunity.UserManage.UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container body-content text-center">
        <h3>Hello 
            <asp:Label ID="LblUserName" runat="server"></asp:Label> !
        </h3>
        <h1>Welcome to .Net Community</h1>

    </div>
</asp:Content>
