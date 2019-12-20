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

public partial class Admin_quanlydoituong : System.Web.UI.Page
{
    DataSetquanlydanhba.sp_DoituongSelectByIDDataTable bangketnoi = new DataSetquanlydanhba.sp_DoituongSelectByIDDataTable();
    DataSetquanlydanhbaTableAdapters.sp_DoituongSelectByIDTableAdapter bien = new DataSetquanlydanhbaTableAdapters.sp_DoituongSelectByIDTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt16(Session["BienKT"]) == 0)
            Response.Redirect("dangnhap.aspx");
        if (!Page.IsPostBack)
        {
            this.chkHienThi.Checked = true;
            laydulieu(0, 1);
        }
    }
    protected void btXoa_Click(object sender, EventArgs e)
    {
        string id = Request["chon"];
        DataSetquanlydanhba.sp_DoituongDeleteDataTable bangkiemtra = new DataSetquanlydanhba.sp_DoituongDeleteDataTable();
        DataSetquanlydanhbaTableAdapters.sp_DoituongDeleteTableAdapter bien = new DataSetquanlydanhbaTableAdapters.sp_DoituongDeleteTableAdapter();
        bangketnoi.Reset();
        bien.Fill(bangkiemtra, id);
        if (Convert.ToInt16(bangkiemtra.Rows[0]["ErrCode"]) == 1)
            laydulieu(kiemtraan(), kiemtrahien());

    }
    protected void chkHienThi_CheckedChanged(object sender, EventArgs e)
    {
        laydulieu(kiemtraan(), kiemtrahien());
    }
    protected void chkKhoa_CheckedChanged(object sender, EventArgs e)
    {
        laydulieu(kiemtraan(), kiemtrahien());
    }
    public string getImageStatus(int status)
    {
        if (status == 1)
        return "<img src=image/on.gif>";
        return "<img src=image/off.gif>";
    }
    public void laydulieu(int an, int hien)
    {
        bangketnoi.Reset();
        bien.Fill(bangketnoi,0, an, hien);
        rptnguoidung.DataSource = bangketnoi;
        rptnguoidung.DataBind();
    }
    public int kiemtraan()
    {
        if (this.chkKhoa.Checked)
        {
            return 0;
        }
        else
        {
            return -1;
        }
    }
    public int kiemtrahien()
    {
        if (this.chkHienThi.Checked)
        {
            return 1;
        }
        else
        {
            return -1;
        }
    }
}
