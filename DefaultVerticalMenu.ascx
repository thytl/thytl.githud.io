<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DefaultVerticalMenu.ascx.cs" Inherits="VMenu" %>

             <asp:Repeater ID="rptPro" runat="server" 
    DataSourceID="SqlDataSource1">
                <HeaderTemplate>
                 <table>   
                </HeaderTemplate> 
         <ItemTemplate > 
            <tr>
            <td><img src="Admin/imageQCao/<%# DataBinder.Eval(Container.DataItem, "Hinh") %>" width="200px" height="150px" /></td>
            </tr>  
       </ItemTemplate>
       <FooterTemplate>
    </table>
    </FooterTemplate>
    </asp:Repeater>  
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:quanlydanhbaConnectionString2 %>" 
    SelectCommand="SELECT [Hinh] FROM [quangcao]"></asp:SqlDataSource>
  