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

public partial class Admin_suaadmin : System.Web.UI.Page
{
    int userid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt16(Session["BienKT"]) == 0)
            Response.Redirect("dangnhap.aspx");
        userid = int.Parse(Request["edit"]);
        if (!Page.IsPostBack)
        {
            khoitao();
            Napdulieu(userid);

        }
    }
    public void khoitao()
    {
        cbsystemright.Items.Insert(0, "Administrator");
        cbsystemright.Items.Insert(1, "Quản lý cấp thấp");
        cbStatus.Items.Insert(0, "Khóa");
        cbStatus.Items.Insert(1, "Không khóa");
    }
    public void Napdulieu(int userid)
    {
        DataSetquanlydanhba.sp_UserSelectByIDDataTable bangketnoi = new DataSetquanlydanhba.sp_UserSelectByIDDataTable();
        DataSetquanlydanhbaTableAdapters.sp_UserSelectByIDTableAdapter bien = new DataSetquanlydanhbaTableAdapters.sp_UserSelectByIDTableAdapter();
        bangketnoi.Reset();
        bien.Fill(bangketnoi, userid, -1, -1);
        txtUserName.Text = bangketnoi.Rows[0]["UserName"].ToString().Trim();
        txtFullName.Text = bangketnoi.Rows[0]["FullName"].ToString().Trim();
        cbsystemright.SelectedIndex = int.Parse(bangketnoi.Rows[0]["Systemright"].ToString().Trim());
        cbStatus.SelectedIndex = int.Parse(bangketnoi.Rows[0]["Status"].ToString().Trim());
    }
    protected void cmdok_Click(object sender, EventArgs e)
    {
        DataSetquanlydanhba.sp_user_updateDataTable bangketnoi = new DataSetquanlydanhba.sp_user_updateDataTable();
        DataSetquanlydanhbaTableAdapters.sp_user_updateTableAdapter bien = new DataSetquanlydanhbaTableAdapters.sp_user_updateTableAdapter();
        bangketnoi.Reset();
        bien.Fill(bangketnoi, userid, txtUserName.Text.Trim(), txtFullName.Text.Trim(), cbsystemright.SelectedIndex + 1, cbStatus.SelectedIndex);
        lblloi.Text = bangketnoi.Rows[0]["ErrMsg"].ToString().Trim();
    }
    protected void cmdcancel_Click(object sender, EventArgs e)
    {
        txtFullName.Text = "";
        txtUserName.Text = "";
        txtUserName.Focus();
    }
}
