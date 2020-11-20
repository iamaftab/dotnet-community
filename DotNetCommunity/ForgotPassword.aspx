<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="DotNetCommunity.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div>
    <h2 class="text-center font-weight-bold">Forgot Password</h2>
    <table class="d-flex justify-content-center ml-0">
        <tbody>
            <tr>
                <td style="width: 7px">User Name </td>
                <td><asp:TextBox ID="usernameTxtBox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 7px">Security Question </td>
                <td><asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                    <asp:ListItem Value="1">What is your nickname</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Answer </td>
                <td>
                    <asp:TextBox ID="answerTxtBox" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td></td>
                <td class="text-center">
                    <asp:Button ID="loginBtn" runat="server" Text="Login" OnClick="LoginBtn_Click" /></td>
            </tr>
        </tbody>
    </table>
         <h4 class="text-center">
             <asp:Label ID="lblPassword" runat="server"></asp:Label>
         </h4>
  </div>
</asp:Content>
