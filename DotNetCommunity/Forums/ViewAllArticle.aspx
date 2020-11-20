<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewAllArticle.aspx.cs" Inherits="DotNetCommunity.Forums.ViewAllArticle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="d-flex justify-content-center">
		<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
			<AlternatingRowStyle BackColor="White" />
			<Columns>
				<asp:BoundField DataField="ArticleType" HeaderText="ArticleType" SortExpression="ArticleType" />
				<asp:BoundField DataField="ArticleDesc" HeaderText="ArticleDesc" SortExpression="ArticleDesc" />
				<asp:BoundField DataField="Posted Date" HeaderText="Posted Date" SortExpression="Posted Date" />
				<asp:BoundField DataField="Posted By" HeaderText="Posted By" SortExpression="Posted By" />
			</Columns>
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
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:communityDB %>" SelectCommand="Select A.ArticleType, A.ArticleDesc, A.CDate AS &quot;Posted Date&quot;, L.Name AS &quot;Posted By&quot; From Article A
	Inner Join Login L On A.LoginId= L.LoginId;"></asp:SqlDataSource>
	</div>
</asp:Content>
