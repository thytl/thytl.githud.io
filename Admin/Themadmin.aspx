<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Themadmin.aspx.cs" Inherits="Admin_Themnguoidung" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 364px;
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
            width: 114px;
        }
        #Table_AddUser
        {
            width: 462px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
       <table id="Table_AddUser" >
        <tr>
            <td colspan="2"  class="Table_Header">
                THÊM NGƯỜI DÙNG</td>
        </tr>
        <tr>
            <td class="style3">
                Username</td>
            <td class="style2">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td class="style3">
                Fullname</td>
            <td class="style2">
                <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtFullName" ErrorMessage="Nhập tên sai" 
                    ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*</asp:RegularExpressionValidator>
            </td>
            
        </tr>
        <tr>
            <td class="style3">
                Systemright</td>
            <td class="style2">
                <select id="cbSystemRight" name="cbSystemRight" onclick="return cbSystemRight_onclick()">
                    <option id="admin" value ="1"  selected>Administrator</option>
                    <option id="user" value ="2" >Quản lý cấp thấp</option>                    
                </select></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblLoi" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="bntCancel" runat="server" Text="Cancel" 
                    onclick="bntCancel_Click" />
                <asp:Button ID="bntCreateUser" runat="server" Text="Tạo người dùng" 
                    onclick="bntCreateUser_Click" 
                    />
            </td>
        </tr>
    </table>
</center>
</asp:Content>

