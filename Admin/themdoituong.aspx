<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="themdoituong.aspx.cs" Inherits="Admin_themdoituong" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #Table_AddUser
        {
            width: 405px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
       <table id="Table_AddUser" >
        <tr>
            <td colspan="2"  class="Table_Header">
                THÊM NGƯỜI DÙNG</td>
        </tr>
        <tr>
            <td class="td">
                Tên</td>
            <td>
                <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtten" ErrorMessage="Nhập họ tên đầy đủ">*</asp:RequiredFieldValidator>
            </td>
           
        </tr>
        <tr>
            <td class="td">
                Tên không dấu</td>
            <td>
                <asp:TextBox ID="txttenkhongdau" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtten" ErrorMessage="Nhập họ tên đầy đủ">*</asp:RequiredFieldValidator>
            </td>
           
        </tr>
        <tr>
            <td class="td">
                Địa chỉ</td>
            <td>
                <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtdiachi" ErrorMessage="Không được để trống">*</asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="td">
                Email</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Width="129px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Nhập đúng đỉa chỉ định dạng Email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
            
        </tr>
        <tr>
            <td class="td">
                Số điện thoại</td>
            <td>
                <asp:TextBox ID="txtsodienthoai" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtsodienthoai" 
                    ErrorMessage="Điện thoại không chính xác theo định dạng" 
                    ValidationExpression="[0-9]{8,15}">*</asp:RegularExpressionValidator>
            </td>
            
        </tr>
        <tr>
            <td class="td">
                Tỉnh</td>
            <td>
                <select id="cbSystemRight" name="cbSystemRight" onclick="return cbSystemRight_onClick()" >
                    <option value="0">Tất cả</option>
                    <option id="1" value="1" selected>An Giang</option>
                    <option id="2" value="2">Bà Rịa Vũng Tàu</option>
                    <option id="3" value="3">Bắc Cạn</option>
                    <option id="4" value="4">Bắc Giang</option>
                    <option id="5" value="5">Bạc Liêu</option>
                    <option id="6" value="6">Bắc Ninh</option>
                    <option id="7" value="7">Bến Tre</option>
                    <option id="8" value="8">Bình Dương</option>
                    <option id="9" value="9">Bình Phước</option>
                    <option id="10" value="10">Bình Thuận</option>
                    <option id="11" value="11">Bình Định</option>
                    <option id="12" value="12">Cà Mau</option>
                    <option id="13" value="13">Cần Thơ</option>
                    <option id="14" value="14">Cao Bằng</option>
                    <option id="15" value="15">Gia Lai</option>
                    <option id="16" value="16">Hà Giang</option>
                    <option id="17" value="17">Hà Nam</option>
                    <option id="18" value="18">Hà Nội</option>
                    <option id="19" value="19">Hà Tây</option>
                    <option id="20" value="20">Hà Tĩnh</option>
                    <option id="21" value="21">Hải Dương</option>
                    <option id="22" value="22">Hải Phòng</option>
                    <option id="23" value="23">Hồ Chí Minh</option>
                    <option id="24" value="24">Hòa Bình</option>
                    <option id="25" value="25">Hưng Yên</option>
                    <option id="26" value="26">Khánh Hòa</option>
                    <option id="27" value="27">Kiên Giang</option>
                    <option id="28" value="28">Kon Tum</option>
                    <option id="29" value="29">Lai Châu</option>
                    <option id="30" value="30">Lâm Đồng</option>
                    <option id="31" value="31">Lạng Sơn</option>
                    <option id="32" value="32">Lào Cai</option>
                    <option id="33" value="33">Long An</option>
                    <option id="34" value="34">Nam Định</option>
                    <option id="35" value="35">Nghệ An</option>
                    <option id="36" value="36">Ninh Bình</option>
                    <option id="37" value="37">Ninh Thuận</option>
                    <option id="38" value="38">Phú Thọ</option>
                    <option id="39" value="39">Phú Yên</option>
                    <option id="40" value="40">Quảng Bình</option>
                    <option id="41" value="41">Quảng Nam</option>
                    <option id="42" value="42">Quảng Ngãi</option>
                    <option id="43" value="43">Quảng Ninh</option>
                    <option id="44" value="44">Quảng Trị</option>
                    <option id="45" value="45">Sóc Trăng</option>
                    <option id="46" value="46">Sơn La</option>
                    <option id="47" value="47">Tây Ninh</option>
                    <option id="48" value="48">Thái Bình</option>
                    <option id="49" value="49">Thái Nguyên</option>
                    <option id="50" value="50">Thanh Hóa</option>
                    <option id="51" value="51">Thừa Thiên Huế</option>
                    <option id="52" value="52">Tiền Giang</option>
                    <option id="53" value="53">Trà Vinh</option>
                    <option id="54" value="54">Tuyên Quang</option>
                    <option id="55" value="55">Vĩnh Long</option>
                    <option id="56" value="56">Vĩnh Phúc</option>
                    <option id="57" value="57">Yên Bái</option>
                    <option id="58" value="58">Đà Nẵng</option>
                    <option id="59" value="59">Đắk Lắk</option>
                    <option id="60" value="60">Đồng Nai</option>
                    <option id="61" value="61">Đồng Tháp</option>                
                </select></td>
           
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblLoi" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="bntCancel" runat="server" Text="Cancel" 
                    onclick="bntCancel_Click" />
                <asp:Button ID="bntCreateUser" runat="server" Text="Tạo người dùng" 
                    onclick="bntCreateUser_Click" 
                    />
            </td>
        </tr>
    </table>

</center>
</asp:Content>

