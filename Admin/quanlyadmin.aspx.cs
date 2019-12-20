using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Admin_quanlyadmin : System.Web.UI.Page
{
    DataSetquanlydanhba.sp_UserSelectByIDDataTable bangketnoi = new DataSetquanlydanhba.sp_UserSelectByIDDataTable();
    DataSetquanlydanhbaTableAdapters.sp_UserSelectByIDTableAdapter bien = new DataSetquanlydanhbaTableAdapters.sp_UserSelectByIDTableAdapter();

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
    public string getImageStatus(int status)
    {
        if (status == 1)
            return "<img src=image/on.gif";
        return "<img src=image/off.gif>";
    }
    public void laydulieu(int an, int hien)
    {
        bangketnoi.Reset();
        bien.Fill(bangketnoi, 0, an, hien);
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
    protected void rptnguoidung_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
    protected void btXoa_Click(object sender, EventArgs e)
    {
        string userid = Request["chon"];
        DataSetquanlydanhba.sp_UserDeleteDataTable bangketnoi1 = new DataSetquanlydanhba.sp_UserDeleteDataTable();
        DataSetquanlydanhbaTableAdapters.sp_UserDeleteTableAdapter bien1 = new DataSetquanlydanhbaTableAdapters.sp_UserDeleteTableAdapter();
        bangketnoi.Reset();
        bien1.Fill(bangketnoi1, userid);

        if (Convert.ToInt16(bangketnoi1.Rows[0]["ErrCode"]) == 1)
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
}
