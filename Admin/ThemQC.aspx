<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ThemQC.aspx.cs" Inherits="Admin_ThemQC" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">



.ContentCell
{
	font-family: Tahoma, Arial, Helvetica, sans-serif;
	font-size: 11px;
	color: #1F5080;
	padding : 0 5 0 5;
	background-color: #F0F5FA;
	border: 1px #C2CFDF solid;
}

.InputCell
{
	font-family: Tahoma, Arial, Helvetica, sans-serif;
	font-size: 13px;
	background-color: white;
	border: #5F9DB9 1px solid;
	padding : 1 2 0 2;
	margin : 0 0 0 0;
	height: 21px;
	vertical-align: middle;
	text-align: left;
}


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="Table_AddPro" align="center">
        <tr>
            <td class="Table_Header" colspan="2">
                THÊM QUÃNG CÁO</td>
        </tr>
        <tr>
            <td class="ContentCell">
                Tên Cty</td>
                                    <td class="InputCell">
                                        <asp:TextBox ID="txtcongty" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="txtcongty" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="ContentCell">
                                        Hình</td>
            <td class="InputCell">
                <asp:FileUpload ID="myFileUpload" runat="server" Width="217px" />
                <asp:Button ID="btnFileUpload" runat="server" onclick="btnFileUpload_Click" Text="Upload
File" />
                <br />
                <asp:Label ID="lblSaveResults" runat="server"></asp:Label>
                <asp:Label ID="lblTenFile" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="ContentCell">
                Href</td>
            <td class="InputCell">
                <asp:TextBox ID="txthref" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="2">
                <asp:Label ID="lblLoi" runat="server" ForeColor="Red"></asp:Label>
                &nbsp;&nbsp;&nbsp;<asp:Button ID="cmdCancel" runat="server" CssClass="Button" 
                    onclick="cmdCancel_Click" style="height: 26px" Text="Cancel" />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="cmdAdd" runat="server" CssClass="Button" 
                    onclick="cmdAdd_Click" Text="Tạo quãng cáo" />
            </td>
        </tr>
    </table>
</asp:Content>

