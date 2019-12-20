<%@ Page Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="gioithieu.aspx.cs" Inherits="gioithieu" Title="Untitled Page" %>

<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc1" %>
<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc2" %>
<%@ Register src="DefaultHeader.ascx" tagname="DefaultHeader" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
    <style type="text/css">
        .style2
        {
            text-align: center;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
    <uc3:DefaultHeader ID="DefaultHeader1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
    <uc1:DefaultMenu ID="DefaultMenu1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
    <table width="600px" border="0">
      <tr>
        <td>Giới thiệu</td>
      </tr>
      <tr>
        <td class="style2">Giới thiệu về công ty  </td>
      </tr>
      <tr>
        <td>Công Ty Cổ Phần Niên Giám Điện Thoại <br />
            - Thành viên của Tập đoàn Bưu Chính viễn thông Việt nam, là công ty hàng đầu tại 
            Việt Nam hoạt động trong lĩnh vực kinh doanh quảng cáo và cung cấp thông tin về 
            sản phẩm thị trường. Được thành lập từ năm 1993, sau 19 năm kinh nghiệm hoạt 
            động trong lĩnh vực kinh doanh quảng cáo, cung cấp thông tin và sản phẩm thị 
            trường, Niên Giám Điện Thoại &amp; Những Trang vàng đã thực sự trở thành &quot; Cầu nối 
            trên thương trường&quot;, mang đến cho doanh nghiệp một phương tiện tìm kiếm hữ ích, 
            một kênh quảng bá thương hiệu, sản phẩm, dịch vụ rộng rãi và hiệu quả tới khách 
            hàng, tới nay công ty đã có bảy sản phẩm, dịch vụ đáp ứng nhu cầu của mọi khách 
            hàng. Với phương châm &quot; Những Trang Vàng <br />
            - Cầu nối trên thương trường &quot;, dịch vụ của Những Trang Vàng luôn dựa trên nền 
            tảng của tính chuyên nghiệp, hiệu quả, nhanh chóng, chính xác. Các sản phẩm và 
            dịch vụ Những Trang Vàng đã khẳng định được hình ảnh và uy tín trên thị trường 
            quảng cáo.<br />
      
            Sau 19 năm không ngừng phấn đấu và phát triển, chúng tôi tự hào về những đóng 
            góp trong việc giới thiệu thành công thương hiệu Những Trang Vàng tại Việt Nam. 
            Không chỉ dừng lại ở những thành tích đã đạt được, trong tương lai Chúng tôi cam 
            kết sẽ tiếp tục khai thác và phát triển sức mạnh kết nối của mình để xứng đáng 
            là &quot;Cầu nối trên thương trường&quot; cho các cá nhân, doanh nghiệp.<br />
      </td>
      </tr>
      <tr>
        <td> <p><strong>Lĩnh vực hoạt động của Công ty :</strong></p>
      <p> Biên soạn, thiết kế và phát hành các loại danh bạ, Niên giám điện thoại và Những 
          Trang Vàng dưới dạng ấn phẩm. đĩa CD Rom và Website.<br />
          Tư vấn thiết kế quảng cáo trên các sản phẩm hàng hoá, phương tiện; tư vấn nghiệp 
          vụ Marketing. Xây dựng các chiến lược quảng cáo tiếp thị, chiến lược quảng cáo 
          sản phẩm.<br />
          Dịch vụ thiết kế, in ấn, chế bản nghiên cứu thị trường, tổ chức hội nghị hội 
          thảo, hội chợ triển lãm.<br />
          Dịch vụ tư vấn giải đáp thông tin, chăm sóc khách hàng trực tiếp qua mạng viễn 
          thông và các hình thức khác. </p>
      <p><strong> Triết lý kinh doanh của Công ty :</strong></p>
      <p> <strong>Tầm nhìn</strong>: Trở thành một địa chỉ cung cấp thông tin doanh nghiệp 
          và thị trường Việt nam đáng tin cậy qua nghe ( 1081), nhìn ( web ), đọc ( sách 
          ).    </p>
    <p><strong>Sứ mạng</strong>: Là cầu nối trên thương trường cho các cá nhân, doanh 
        nghiệp trong việc tìm kiếm thông tin và đối tác.</p></td>
      </tr>
    </table>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
    <uc2:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>

