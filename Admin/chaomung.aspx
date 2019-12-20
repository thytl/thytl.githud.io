<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="chaomung.aspx.cs" Inherits="Admin_Index" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size:40px; color: #5E9D45;">
    Chào <%=Session["Username"] %> đến với trang quản lý wed site</p>
</asp:Content>

