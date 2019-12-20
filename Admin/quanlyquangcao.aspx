<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="quanlyquangcao.aspx.cs" Inherits="Admin_quanlyquangcao" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
          
                <table id="Table_quanlydanhmuc"> 
                <tr>
                 <td class="style1" colspan="5" style="color: #008080">
                     QUẢN LÝ QUẢNG CÁO</td>
                </tr>
                
          
                 <tr>
                        <td class="td" style="width:200px"  >
                            <asp:HyperLink ID="addUser" runat="server" NavigateUrl="~/Admin/ThemQC.aspx">Tạo 
                            mới</asp:HyperLink>
                        </td>
                        <td class="td"  >
                            <asp:Button ID="btXoa" runat="server" Text="Xóa sản phẩm" onclick="btXoa_Click" style="height: 26px" 
                               />
                        </td>
                        <td class="td" align="right" style="width:200px"  >
                            Lọc theo trạng thái:</td>
                        <td class="td">
                            <asp:CheckBox ID="chkHienThi" runat="server" Text="Hiển thị" 
                                AutoPostBack="True" oncheckedchanged="chkHienThi_CheckedChanged" />
                        </td>
                        <td class="tdtxtbox">
                            <asp:CheckBox ID="chkKhoa" runat="server" Text="Khóa" AutoPostBack="True" 
                                oncheckedchanged="chkKhoa_CheckedChanged" />
                        </td>
                    </tr>
                
          
        <tr>
            <td colspan="5">
             <asp:Repeater ID="rptPro" runat="server">
                <HeaderTemplate>
                 <table>   
                <tr>
               
                <td>ID</td>
                <td>Tên Cty</td>
                <td>Hình</td>
                 <td>Href</td>
                <td>Status</td>
                <td>Delete</td>
                <td>Edit</td>

                </tr>
                
                </HeaderTemplate> 
         <ItemTemplate > 
            <tr>
             <td style="text-align:center; width: 100px"><%# DataBinder.Eval(Container.DataItem, "id")%>    </td>   
             <td style="text-align:center; width: 100px"><%# DataBinder.Eval(Container.DataItem, "TenCty")%>    </td>          
             <td><img src="imageQCao/<%# DataBinder.Eval(Container.DataItem, "Hinh") %>" width="100px" height="100px" /></td>
             <td style="text-align:center; width: 100px"><%# DataBinder.Eval(Container.DataItem, "Hrep")%></td>     
             <td style="text-align:center; width: 100px"><%# getImageStatus(Convert.ToInt16(DataBinder.Eval(Container.DataItem, "Status")))%></td>            
            <td style="text-align:center; width: 100px"> 
             <input type="checkbox" name="chkXoa" value="<%#DataBinder.Eval(Container.DataItem,"id")%> " /> 
            </td>         
            <td style="text-align:center; width: 100px"><a href="suaQC.aspx?edit=<%#DataBinder.Eval(Container.DataItem,"id")%>"><img src="image/Edit.gif" alt=""></img></a>
            </td>
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

