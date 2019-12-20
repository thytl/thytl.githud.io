<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="dangnhap.aspx.cs" Inherits="Admin_dangnhap" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table id="Table_Login" cellpadding="0" cellspacing="0">
    <tr>
        <td class="Table_Header" colspan="2">
            Đăng Nhập&nbsp;</td>
    </tr>
    <tr>
        <td>
            Tên Đăng Nhập:</td>
        <td>
            <asp:TextBox ID="txtuser" runat="server" Height="23px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="loi1" runat="server" 
                ControlToValidate="txtuser" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Password:</td>
        <td>
            <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="loi2" runat="server" 
                ControlToValidate="txtpass" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lblthongbao" runat="server" style="text-align: left" 
                ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="btnok" runat="server" onclick="Button1_Click" 
                Text="Đăng nhập" BorderColor="#6CA80C" BorderStyle="Inset" 
                ForeColor="#6CA80C" />
        </td>
    </tr>
</table>
</center>
</asp:Content>

