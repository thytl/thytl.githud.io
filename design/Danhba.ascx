<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Danhba.ascx.cs" Inherits="design_Danhba" %>
<%@ Register TagPrefix="cc1" Namespace="SiteUtils" Assembly="CollectionPager" %>
<center>


 
     <table>
        <tr>
            <td style="text-align: center">

                <asp:Label ID="lblMsg" runat="server" ForeColor="#FF0066"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>
           
                <table id="Table1" border="0" style="width: 100%">
                    <tr>
                        <td id="td1" style="height: 35px">
                             <cc1:CollectionPager ID="CollectionPager2" runat="server" BackText="« Trước" 
                                FirstText="-- Đầu" LabelText="Trang:" LastText="Cuối" NextText="Sau »" 
                                PagingMode="PostBack" ResultsFormat="Kết quả từ {0}-{1} (của {2}) " 
                                ShowFirstLast="True" SliderSize="5">
                            </cc1:CollectionPager>
                        </td>
                    </tr>
                </table> 
    

            </td>
        </tr>
        <tr>
            <td align="center">
 
                <asp:GridView ID="grSearch" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" GridLines="Horizontal" ShowFooter="True" Width="97%">
                    <PagerSettings Position="TopAndBottom" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <Columns>
                        <asp:TemplateField HeaderText="Tên :">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" 
                                    Text='<%# DataBinder.Eval(Container.DataItem, "Tendoituong") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Số điện thoại :">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" 
                                    Text='<%# DataBinder.Eval(Container.DataItem, "SoDienThoai") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Địa chỉ :">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" 
                                    Text='<%# DataBinder.Eval(Container.DataItem, "Diachi") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                </asp:GridView>
    
            </td>
        </tr>
       
    </table>
   

</center>