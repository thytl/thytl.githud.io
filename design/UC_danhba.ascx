<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_danhba.ascx.cs" Inherits="design_UC_danhba" %>
<%@ Register TagPrefix="cc1" Namespace="SiteUtils" Assembly="CollectionPager" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
<div class="art-post">
<div class="art-post-body">
<div class="art-post-inner">
<div class="art-postcontent">
  
  <!-- <asp:placeholder runat="server" id="ContentPlaceholder">-->
      <asp:DataList ID="dtlDanSachSanPham" runat="server" RepeatColumns="1" 
        Height="216px" Width="400px" 
        BackColor="White" Font-Bold="False" Font-Italic="False" Font-Overline="False" 
        Font-Strikeout="False" Font-Underline="False" ForeColor="Blue">
          <ItemTemplate>
          <div style="float:left; margin-right:8px; width:214px; height:250px;">
         <div style="float:left; width:7px; height:7px"></div>
         <div style="float:left; height:7px"></div>
         <div style="float:left; width:7px; height:7px"></div>
         <div style="float:left; clear:both; width:7px; height:200px"></div>
         <div style="float:left; width:200px; height:200px;">
       
              <table class="style1">
                  <tr>
                      <td>
                         Tên :<%# DataBinder.Eval(Container.DataItem, "Tendoituong")%></td>
                  </tr>
                  <tr>
                      <td>
                          Địa chỉ :<%# DataBinder.Eval(Container.DataItem, "Diachi")%></td>
              </tr>
                   <tr>
                      <td>
                         Số điện thoại :<%# DataBinder.Eval(Container.DataItem, "SoDienThoai")%></td>
                  </tr>
              </table>
                </div>
               <div style="float:left; width:7px; height:200px"></div>
               <div style="float:left; width:7px; height:7px"></div>
               <div style="float:left; background:url(images/duoi.gif) repeat-x; width:400px; height:7px"></div>
               <div style="float:left; width:7px; height:7px"></div>
          </div>   
          </ItemTemplate>
            
        </asp:DataList>
<!--</asp:placeholder>-->
 <table id="tbphantrang" border="0" style="width: 100%">
        <tr>
            <td id="tdphantrang" style="height: 35px">
            <cc1:CollectionPager ID="CollectionPager1" runat="server" BackText="« Trước" FirstText="-- Đầu" LabelText="Trang:" LastText="Cuối" NextText="Sau »" ResultsFormat="Kết quả từ {0}-{1} (của {2}) " ShowFirstLast="True" SliderSize="5" PagingMode="PostBack"></cc1:CollectionPager>
          </td>
        </tr>
  </table>
  
  </div>
  
     
</div>

		<div class="cleared"></div>
    </div>
</div>


