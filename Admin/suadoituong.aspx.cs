using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Admin_suadoituong : System.Web.UI.Page
{
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt16(Session["BienKT"]) == 0)
            Response.Redirect("dangnhap.aspx");
        id = int.Parse(Request["edit"]);
        if (!Page.IsPostBack)
        {
            khoitao();
            Napdulieu(id);
        }

    }
    public void khoitao()
    {
        //Quyền hạn
        cbsystemright.Items.Insert(0, "Tất cả");
        cbsystemright.Items.Insert(1, "Bà Rịa Vũng Tàu");
        cbsystemright.Items.Insert(2, "Bắc Cạn");
        cbsystemright.Items.Insert(3, "Bắc Giang");
        cbsystemright.Items.Insert(4, "Bạc Liêu");
        cbsystemright.Items.Insert(5, "Bắc Ninh");
        cbsystemright.Items.Insert(6, "Bến Tre");
        cbsystemright.Items.Insert(7, "Bình Dương");
        cbsystemright.Items.Insert(8, "Bình Phước");
        cbsystemright.Items.Insert(9, "Bình Thuận");
        cbsystemright.Items.Insert(10,"Bình Định");
        cbsystemright.Items.Insert(11,"Cà Mau");
        cbsystemright.Items.Insert(12,"Cần Thơ");
        cbsystemright.Items.Insert(13, "Cao Bằng");
        cbsystemright.Items.Insert(14, "Gia Lai");
        cbsystemright.Items.Insert(15, "Hà Giang");
        cbsystemright.Items.Insert(16, "Hà Nam");
        cbsystemright.Items.Insert(17, "Hà Nội");
        cbsystemright.Items.Insert(18, "Hà Tây");
        cbsystemright.Items.Insert(19, "Hà Tĩnh");
        cbsystemright.Items.Insert(20, "Hải Dương");
        cbsystemright.Items.Insert(21, "Hải Phòng");
        cbsystemright.Items.Insert(22, "Hồ Chí Minh");
        cbsystemright.Items.Insert(23, "Hòa Bình");
        cbsystemright.Items.Insert(24, "Hưng Yên");
        cbsystemright.Items.Insert(25, "Khánh Hòa");
        cbsystemright.Items.Insert(26, "Kiên Giang");
        cbsystemright.Items.Insert(27, "Kon Tum");
        cbsystemright.Items.Insert(28, "Lai Châu");
        cbsystemright.Items.Insert(29, "Lâm Đồng");
        cbsystemright.Items.Insert(30, "Lạng Sơn");
        cbsystemright.Items.Insert(31, "Lào Cai");
        cbsystemright.Items.Insert(32, "Long An");
        cbsystemright.Items.Insert(33, "Nam Định");
        cbsystemright.Items.Insert(34, "Nghệ An");
        cbsystemright.Items.Insert(35, "Ninh Bình");
        cbsystemright.Items.Insert(36, "Ninh Thuận");
        cbsystemright.Items.Insert(37, "Phú Thọ");
        cbsystemright.Items.Insert(38, "Phú Yên");
        cbsystemright.Items.Insert(39, "Quảng Bình");
        cbsystemright.Items.Insert(40, "Quảng Nam");
        cbsystemright.Items.Insert(41, "Quảng Ngãi");
        cbsystemright.Items.Insert(42, "Quảng Ninh");
        cbsystemright.Items.Insert(43, "Quảng Trị");
        cbsystemright.Items.Insert(44, "Sóc Trăng");
        cbsystemright.Items.Insert(45, "Sơn La");
        cbsystemright.Items.Insert(46, "Tây Ninh");
        cbsystemright.Items.Insert(47, "Thái Bình");
        cbsystemright.Items.Insert(48, "Thái Nguyên");
        cbsystemright.Items.Insert(49, "Thanh Hóa");
        cbsystemright.Items.Insert(50, "Thừa Thiên Huế");
        cbsystemright.Items.Insert(51, "Tiền Giang");
        cbsystemright.Items.Insert(52, "Trà Vinh");
        cbsystemright.Items.Insert(53, "Tuyên Quang");
        cbsystemright.Items.Insert(54, "Vĩnh Long");
        cbsystemright.Items.Insert(55, "Vĩnh Phúc");
        cbsystemright.Items.Insert(56, "Yên Bái");
        cbsystemright.Items.Insert(57, "Đà Nẵng");
        cbsystemright.Items.Insert(58, "Đắk Lắk");
        cbsystemright.Items.Insert(59, "Đồng Nai");
        cbsystemright.Items.Insert(60, "Đồng Tháp");
        
        //Trạng thái

        cbStatus.Items.Insert(0, "Khóa");
        cbStatus.Items.Insert(1, "Không khóa");

    }
    public void Napdulieu(int iddoituong) {
        DataSetquanlydanhba.sp_DoituongSelectDataTable bangketnoi = new DataSetquanlydanhba.sp_DoituongSelectDataTable();
        DataSetquanlydanhbaTableAdapters.sp_DoituongSelectTableAdapter bien = new DataSetquanlydanhbaTableAdapters.sp_DoituongSelectTableAdapter();
        bangketnoi.Reset();
        bien.Fill(bangketnoi, iddoituong, -1, -1);
        txtten.Text = bangketnoi.Rows[0]["tendoituong"].ToString().Trim();
        txtdiachi.Text = bangketnoi.Rows[0]["diachi"].ToString().Trim();
        txtemail.Text = bangketnoi.Rows[0]["email"].ToString().Trim();
        txtsdt.Text = bangketnoi.Rows[0]["SoDienThoai"].ToString().Trim();
        cbsystemright.SelectedIndex = int.Parse(bangketnoi.Rows[0]["tinh"].ToString().Trim());
        cbStatus.SelectedIndex = int.Parse(bangketnoi.Rows[0]["doituongStatus"].ToString().Trim());
    }
    protected void cmdok_Click(object sender, EventArgs e)
    {
        DataSetquanlydanhba.sp_doituongupdateDataTable bangketnoi = new DataSetquanlydanhba.sp_doituongupdateDataTable();
        DataSetquanlydanhbaTableAdapters.sp_doituongupdateTableAdapter bien = new DataSetquanlydanhbaTableAdapters.sp_doituongupdateTableAdapter();
        bangketnoi.Reset();
        bien.Fill(bangketnoi,id, txtten.Text.Trim(), txtdiachi.Text.Trim(), txtemail.Text.Trim(), txtsdt.Text.Trim(), cbsystemright.SelectedIndex + 1, cbStatus.SelectedIndex);
        lblloi.Text = bangketnoi.Rows[0]["ErrMsg"].ToString().Trim();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        txtten.Text = "";
        txtdiachi.Text = "";
        txtemail.Text = "";
        txtsdt.Text = "";
        txtten.Focus();
    }
}
