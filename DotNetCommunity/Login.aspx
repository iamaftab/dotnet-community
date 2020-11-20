<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DotNetCommunity.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <h2 class="text-center font-weight-bold">User Login</h2>
    <table class="d-flex justify-content-center ml-0">
        <tbody>
            <tr>
                <td style="width: 7px">User Name</td>
                <td><asp:TextBox ID="usernameTxtBox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 7px">Password</td>
                <td><asp:TextBox ID="passwordTxtBox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 7px"><a href="ForgotPassword">Forgot Password</a></td>
                <td class="text-center">
                    <asp:Button ID="loginBtn" runat="server" Text="Login" OnClick="LoginBtn_Click" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <h4>
                        <asp:Label ID="LblErrorMsg" runat="server"></asp:Label>
                    </h4>
                </td>
            </tr>
        </tbody>
    </table>
        </div>
</asp:Content>
