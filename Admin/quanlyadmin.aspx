<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="quanlyadmin.aspx.cs" Inherits="Admin_quanlyadmin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        font-weight: bold;
        background-color: #6CA80C;
    }
    .style2
    {
        width: 200px;
        font-weight: bold;
        border-left-color: #A7A6AA;
        border-right-color: #C0C0C0;
        border-top-color: #A7A6AA;
        border-bottom-color: #C0C0C0;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
          
                <table> 
                <tr>
                 <td class="Table_Header" colspan="5" >
                     <asp:Label ID="lblqlnguoidung" runat="server" Font-Size="XX-Large" 
                         ForeColor="White">Quản lý người dùng</asp:Label>
                 </td>
                </tr>
                 <tr>
                        <td class="td" >
                            <asp:HyperLink ID="addUser" runat="server" NavigateUrl="~/Admin/Themadmin.aspx" 
                                ForeColor="#6CA80C">Tạo mới</asp:HyperLink>
                        &nbsp;|
                        </td>
                        <td class="td"  >
                            <asp:Button ID="btXoa" runat="server" Text="Xóa Admin" onclick="btXoa_Click" 
                                BorderStyle="Solid" ForeColor="#6CA80C" 
                               />
                        </td>
                        <td align="right" style="width:200px; color: #FFFFFF;" bgcolor="#6CA80C" 
                            class="style2"  >
                            <span class="style1">Lọc theo trạng thái:</span></td>
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
                UserID</td>
            <td align="center" style="text-align:center; font-weight: bold; width: 100px">
                UserName</td>
            <td align="center" style="text-align:center; font-weight: bold; width: 100px">
                FullName</td>
            <td align="center" style="text-align:center; font-weight: bold; width: 100px">
                Systemright</td>
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
            <td style="text-align:center; width: 100px"><%# DataBinder.Eval(Container.DataItem, "Userid") %>    </td>
            <td style="text-align:center; width: 100px"> <%#DataBinder.Eval(Container.DataItem,"username")%>   </td>
            <td style="text-align:center; width: 300px"> <%#DataBinder.Eval(Container.DataItem,"fullname")%>   </td>
            <td style="text-align:center; width: 100px"><%#DataBinder.Eval(Container.DataItem,"systemright")%> </td>
            <td style="text-align:center; width: 100px"><%# getImageStatus(Convert.ToInt16(DataBinder.Eval(Container.DataItem, "Status")))%>
                                           
            </td>
            <td style="text-align:center; width: 100px"> 
             <input type="checkbox" name="chon" value="<%#DataBinder.Eval(Container.DataItem,"userid")%> " /> 
            </td>            
            <td style="text-align:center; width: 100px"><a href="suaadmin.aspx?edit=<%#DataBinder.Eval(Container.DataItem,"userid")%>"><img src="image/Edit.gif" alt=""></img></a></td>
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

