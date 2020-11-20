<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PostAQuery.aspx.cs" Inherits="DotNetCommunity.Forums.PostAQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <img src="./images/postquery.jpg" alt="" />
            <table class="d-flex justify-content-center">
                <tbody>
                    <tr>
                        <td>Question Id : </td>
                        <td>
                            <asp:Label ID="qIdLbl" runat="server"></asp:Label>

                        </td>
                    </tr>
                    <tr>
                        <td>Question</td>
                        <td>
                            <asp:TextBox ID="qtxtBox" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="postqueryBtn" runat="server" Text="Post Query" OnClick="PostqueryBtn_Click" /></td>
                    </tr>
                </tbody>
            </table>
        </div>
</asp:Content>
