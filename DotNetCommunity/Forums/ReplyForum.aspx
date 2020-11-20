<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ReplyForum.aspx.cs" Inherits="DotNetCommunity.Forums.ReplyForum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-center">
            <img src="./images/postquery.jpg" alt="" />
            <table>
                <tbody>
                    <tr>
                        <td>Question: </td>
                        <td>
                            <asp:Label ID="LblQuestion" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Answer</td>
                        <td>
                            <asp:TextBox ID="TxtAnswer" runat="server" Height="201px" TextMode="MultiLine" Width="364px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="text-center">
                            <asp:Button ID="BtnPostReply" runat="server" Text="Post Reply" OnClick="BtnPostReply_Click" /></td>
                    </tr>
                </tbody>
            </table>
        </div>
</asp:Content>
