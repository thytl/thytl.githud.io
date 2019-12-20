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

public partial class Admin_dangnhap : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["bienkt"] = 0;
        this.txtuser.Focus();
    }
    public bool KiemTraDangNhap(string user, string pass)
    {

        DataSetquanlydanhba.sp_UserCheckPasswordDataTable bangketnoi = new DataSetquanlydanhba.sp_UserCheckPasswordDataTable();
        DataSetquanlydanhbaTableAdapters.sp_UserCheckPasswordTableAdapter bien = new DataSetquanlydanhbaTableAdapters.sp_UserCheckPasswordTableAdapter();
        bangketnoi.Reset();
        bien.Fill(bangketnoi, user, pass);
        if (Convert.ToInt16(bangketnoi.Rows[0]["ErrCode"]) == 0)
        {
            Session["Username"] = bangketnoi.Rows[0]["Username"];
            return true;
        }
        else
        {
            lblthongbao.Text = bangketnoi.Rows[0]["Errmsg"].ToString();
            return false;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (KiemTraDangNhap(txtuser.Text.Trim(), txtpass.Text.Trim()) == false)
        {
            txtuser.Text = "";
            txtpass.Text = "";
            txtpass.Focus();
        }
        else {
            Session["bienkt"] = 1;
            Response.Redirect("chaomung.aspx");
        }
    }
}
