<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="doimatkhau.aspx.cs" Inherits="Admin_doimatkhau" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-family: Times New Roman , Tahoma, Arial, Helvetica, sans-serif;
            height: 35px;
            text-align : center;
            vertical-align: middle;
            font-weight: bold;
            font-size: 14px;
            color: #6CA80C;
            width: 167px;
        }
        .style3
        {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table>
        <tr>
            <td class="Table_Header" colspan="2">
                ĐỔI MẬT KHẨU</td>
        </tr>
        <tr>
            <td class="style2">
                UserName</td>
            <td class="style3">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUserName" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Old Password</td>
                                    <td class="style3">
                                        <asp:TextBox ID="txtOldPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        New Password</td>
                                    <td class="style3">
                                       
                                        <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                                            runat="server" ControlToValidate="txtNewPassword" 
                                            ErrorMessage="Mật khẩu không hợp lệ" 
                                            ValidationExpression="([a-zA-Z]|[_]|[1-9]|[.]|[,]|[@]|[!]|[#]|[$]|[^]|[%]){6,20}">*</asp:RegularExpressionValidator>
                                             
                                                    <asp:Label ID="lblloi" runat="server" ForeColor="Red"></asp:Label>
                                               
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Confirm New Password</td>
            <td class="style3">
                <asp:TextBox ID="txtConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator" runat="server" 
                    ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmNewPassword" 
                    ErrorMessage="Xác nhận password sai">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblnhan" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
               
                <asp:Button ID="blbdoi" runat="server" onclick="blbdoi_Click" 
                    Text="Đổi mật khẩu" BorderColor="#6CA80C" BorderStyle="Inset" 
                    ForeColor="#6CA80C" />
               
            </td>
        </tr>
    </table>
   </center>
</asp:Content>

