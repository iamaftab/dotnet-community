<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PostProject.aspx.cs" Inherits="DotNetCommunity.Forums.PostProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-center">
        <table>
            <tr>
                <td>Project Id : </td>
                <td>
                    <asp:Label ID="LblPojectId" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Project Type: </td>
                <td>
                    <asp:TextBox ID="TxtProjectType" runat="server" Width="265px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Upload a Project: </td>
                <td>
                    
                    <asp:FileUpload ID="FileUploadId" runat="server" />
                    
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="BtnUpload" runat="server" Text="Upload Project" OnClick="BtnUpload_Click"/>
                    <br />
                    <asp:Label ID="LblErrorMsg" runat="server"></asp:Label>
                </td>
            </tr>

        </table>
    </div>
</asp:Content>
