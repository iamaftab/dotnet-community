<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PostArticle.aspx.cs" Inherits="DotNetCommunity.Forums.PostArticle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-center">
        <table>
            <tr>
                <td>Article Id: 
                    <asp:Label ID="LblArtiId" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="ArtiId" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Article type: </td>
                <td>
                    <asp:TextBox ID="TxtArtiType" runat="server" Width="265px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Description: </td>
                <td>
                    <asp:TextBox ID="TxtDesc" runat="server" Height="129px" TextMode="MultiLine" Width="347px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="BtnPostArticle" runat="server" Text="Post Article" OnClick="BtnPostArticle_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
