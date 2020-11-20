<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="DotNetCommunity.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <h2 class="text-center font-weight-bold">User Registration</h2>
    <table class="d-flex justify-content-center ml-0">
        <tbody>
            <tr>
                <td style="width: 7px">LoginId</td>
                <td><asp:Label ID="loginId_lbl" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 7px">Name</td>
                <td><asp:TextBox ID="nameTxtBox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 7px">User Name</td>
                <td><asp:TextBox ID="usernameTxtBox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 7px">Password</td>
                <td><asp:TextBox ID="passwordTxtBox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="height: 65px; width: 7px">Security Question</td>
                <td><asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                    <asp:ListItem Value="1">What is your nickname</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 7px">Answer</td>
                <td><asp:TextBox ID="answerTxtBox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td class="text-center">
                    <asp:Button ID="submitBtn" runat="server" Text="Submit" OnClick="SubmitBtn_Click" /></td>
            </tr>
        </tbody>
    </table>
        </div>

</asp:Content>
