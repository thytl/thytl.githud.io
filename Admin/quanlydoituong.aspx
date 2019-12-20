<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="quanlydoituong.aspx.cs" Inherits="Admin_quanlydoituong" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 117px;
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
        width: 123px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
          
                <table> 
                <tr>
                 <td class="Table_Header" colspan="5" >
                     <asp:Label ID="lblqlnguoidung" runat="server" Font-Size="XX-Large"></asp:Label>
                 </td>
                </tr>
                 <tr>
                        <td class="td" >
                            <asp:HyperLink ID="addUser" runat="server" 
                                NavigateUrl="~/Admin/themdoituong.aspx" ForeColor="#6CA80C">Tạo mới</asp:HyperLink>
                        &nbsp;|
                        </td>
                        <td class="style3"  >
                            <asp:Button ID="btXoa" runat="server" Text="Xóa người dùng" 
                                onclick="btXoa_Click" BorderStyle="Solid" ForeColor="#6CA80C" 
                               />
                        </td>
                        <td align="right" class="style2" bgcolor="#6CA80C" 
                            style="color: #FFFFFF; font-weight: bold"  >
                            Lọc theo trạng thái:</td>
                        <td>
                            <asp:CheckBox ID="chkHienThi" runat="server" Text="Hiển thị" 
                                AutoPostBack="True" oncheckedchanged="chkHienThi_CheckedChanged" 
                                ForeColor="#6CA80C" />
                        </td>
                        <td>
                            <asp:CheckBox ID="chkKhoa" runat="server" Text="Khóa" AutoPostBack="True" 
                                oncheckedchanged="chkKhoa_CheckedChanged" ForeColor="#6CA80C" />
                        </td>
                    </tr>
                
          
        <tr>
            <td colspan="5">
                <asp:Repeater ID="rptnguoidung" runat="server">
                <HeaderTemplate>
        <table>
        <tr>
            <td align="center" style=" text-align:center; font-weight: bold; width: 100px">
                id</td>
            <td align="center" style="text-align:center; font-weight: bold; width: 100px">
                Tên đối tượng</td>
            <td align="center" style="text-align:center; font-weight: bold; width: 100px">
                Địa chỉ</td>
            <td align="center" style="text-align:center; font-weight: bold; width: 100px">
                Email</td>
            <td align="center" style="text-align:center; font-weight: bold; width: 100px">
                Số thuê bao</td>
            <td align="center" style="text-align:center; font-weight: bold; width: 100px">
                Tỉnh</td>
            <td align="center" style="text-align:center; font-weight: bold; width: 100px">
                Status</td>
            <td align="center" style="text-align:center; font-weight: bold; width: 100px">
                Delete</td>
            <td align="center" style="text-align:center; font-weight: bold; width: 100px">
                Edit</td>
        </tr>
                
                </HeaderTemplate> 
         <ItemTemplate > 
        <tr>
            <td style="text-align:center; width: 100px"><%# DataBinder.Eval(Container.DataItem,"iddoituong") %> </td>
            <td style="text-align:center; width: 100px"><%#DataBinder.Eval(Container.DataItem,"tendoituong")%>   </td>
            <td style="text-align:center; width: 300px"><%#DataBinder.Eval(Container.DataItem,"diachi")%>   </td>
            <td style="text-align:center; width: 100px"><%#DataBinder.Eval(Container.DataItem,"email")%> </td>
            <td style="text-align:center; width: 100px"><%# DataBinder.Eval(Container.DataItem,"SoDienThoai") %>    </td>
            <td style="text-align:center; width: 100px"><%# DataBinder.Eval(Container.DataItem, "tinh") %>    </td> 
            <td style="text-align:center; width: 100px"><%# getImageStatus(Convert.ToInt16(DataBinder.Eval(Container.DataItem, "doituongStatus")))%> </td>
            <td style="text-align:center; width: 100px"> 
            <input type="checkbox" name="chon" value="<%#DataBinder.Eval(Container.DataItem,"iddoituong")%> " /> 
            </td>            
            <td style="text-align:center; width: 100px"><a href="suadoituong.aspx?edit=<%#DataBinder.Eval(Container.DataItem,"iddoituong")%>"><img src="image/Edit.gif" alt=""></img></a></td>
        </tr>
       </ItemTemplate>
       <FooterTemplate>
    </table>
    </FooterTemplate>
    </asp:Repeater>
      </td>
      </tr>
      </table>
</center>
</asp:Content>

