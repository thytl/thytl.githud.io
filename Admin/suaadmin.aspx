<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="suaadmin.aspx.cs" Inherits="Admin_suaadmin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 269px;
        }
        .style3
        {
            font-family: Times New Roman , Tahoma, Arial, Helvetica, sans-serif;
            height: 35px;
            text-align : center;
            vertical-align: middle;
            font-weight: bold;
            font-size: 14px;
            color: #0066ff;
            width: 110px;
        }
        .style4
        {
            width: 110px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table id="Table_updatenguoidung" cellspacing="0" cellspacing="0">
    <tr>
        <td class="Table_Header" colspan="2">
            SỬA NGƯỜI DÙNG</td>
    </tr>
    <tr>
        <td class="style3" >
            User name:</td>
        <td class="style2">
            <asp:TextBox ID="txtUserName" runat="server" MaxLength="40" Width="203px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtUserName" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Full name:</td>
        <td class="style2">
            <asp:TextBox ID="txtFullName" runat="server" MaxLength="40" Width="203px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtFullName" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Quyền hạn</td>
        <td class="style2">
            <asp:DropDownList ID="cbsystemright" runat="server" Width="151px" 
                CssClass="tdtxtbox">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Trạng thái</td>
        <td class="style2">
            <asp:DropDownList ID="cbStatus" runat="server" Width="150px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lblloi" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style4" >
            <asp:Button ID="cmdok" runat="server" Text="OK" onclick="cmdok_Click" />
        </td>
        <td class="style2">
            <asp:Button ID="cmdcancel" runat="server" Text="Cancel" onclick="cmdcancel_Click" 
                />
        </td>
    </tr>
</table>
</center>
</asp:Content>

