<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="suaQC.aspx.cs" Inherits="Admin_suaQC" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

.DataTable
{
	font-family: Times New Roman , Tahoma, Arial, Helvetica, sans-serif;
	background-color: #eaf7fd;
	border: 2px solid #006699;	
	width :100%;
}


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
    <table align="center" class="DataTable" width="500">
        <tr>
            <td class="Table_Header" colspan="2">
                Sửa Quảng Cáo</td>
        </tr>
        <tr>
            <td class="ContentCell" style="width: 145px; height: 30px">
                Tên công ty :</td>
            <td class="InputCell" style="height: 30px">
                <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="ContentCell" style="width: 145px">
                Hình</td>
            <td class="InputCell">
                <asp:FileUpload ID="myFileUpload" runat="server" />
                <asp:Button ID="btnFileUpload" runat="server" onclick="btnFileUpload_Click" 
                    Text="Upload File" />
                <asp:Label ID="lblSaveResults" runat="server"></asp:Label>
                <asp:Label ID="lblTenFile" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="ContentCell" style="width: 145px; height: 28px">
                Status</td>
            <td class="InputCell" style="height: 28px">
                <asp:DropDownList ID="cboStatus" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="ContentCell" style="width: 145px">
                Href :</td>
            <td class="InputCell">
                <asp:TextBox ID="txthref" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="2" style="height: 23px">
                <asp:Label ID="lblLoi" runat="server" ForeColor="Red"></asp:Label>
                &nbsp; &nbsp;<asp:Button ID="cmdCancel" runat="server" CssClass="Button" 
                    Text="Cancel" onclick="cmdCancel_Click" />
                &nbsp; &nbsp;<asp:Button ID="cmdEdit" runat="server" CssClass="Button" 
                    onclick="cmdEdit_Click" Text="Hiệu chỉnh quảng cáo" />
            </td>
        </tr>
    </table>
</asp:Content>

