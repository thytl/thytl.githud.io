<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="suadoituong.aspx.cs" Inherits="Admin_suadoituong" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
         width: 147px;
     }
        .style4
        {
            width: 147px;
        }
    </style>
<center>
    <table id="Table_updatenguoidung" cellspacing="0">
    <tr>
        <td class="Table_Header" colspan="2">
            SỬA NGƯỜI DÙNG</td>
    </tr>
    <tr>
        <td class="style3" >
            Tên:</td>
        <td class="style2">
            <asp:TextBox ID="txtten" runat="server" MaxLength="40" Width="203px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtten" ErrorMessage="Nhập họ tên đầy đủ">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Địa chỉ:</td>
        <td class="style2">
            <asp:TextBox ID="txtdiachi" runat="server" MaxLength="40" Width="203px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtdiachi" ErrorMessage="Không được để trống">*</asp:RequiredFieldValidator>
        </td>
    </tr>
       <tr>
        <td class="style3">
            Email</td>
        <td class="style2">
            <asp:TextBox ID="txtemail" runat="server" MaxLength="40" Width="203px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Nhập đúng đỉa chỉ định dạng Email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr> 
      <tr>
        <td class="style3">
            Số điện thoại:</td>
        <td class="style2">
            <asp:TextBox ID="txtsdt" runat="server" MaxLength="40" Width="203px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtsdt" 
                    ErrorMessage="Điện thoại không chính xác theo định dạng" 
                    ValidationExpression="[0-9]{8,15}">*</asp:RegularExpressionValidator>
        </td>
    </tr>
   
    <tr>
        <td class="style3">
            Tỉnh</td>
        <td>
            
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
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Cancel" />
        </td>
    </tr>
</table>
</center>
</asp:Content>

