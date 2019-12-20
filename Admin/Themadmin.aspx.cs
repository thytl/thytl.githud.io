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

public partial class Admin_Themnguoidung : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt16(Session["BienKT"]) == 0)
            Response.Redirect("dangnhap.aspx");
    }
    protected void bntCancel_Click(object sender, EventArgs e)
    {
        txtFullName.Text = "";
        txtUserName.Text = "";
        txtUserName.Focus();
    }
    protected void bntCreateUser_Click(object sender, EventArgs e)
    {
        string biensystem = Request["cbSystemRight"];
        DataSetquanlydanhba.sp_UserInsertDataTable bangketnoi = new DataSetquanlydanhba.sp_UserInsertDataTable();
        DataSetquanlydanhbaTableAdapters.sp_UserInsertTableAdapter bien = new DataSetquanlydanhbaTableAdapters.sp_UserInsertTableAdapter();
        bien.Fill(bangketnoi, txtUserName.Text.Trim(), txtFullName.Text.Trim(), Convert.ToInt16(biensystem));
        bangketnoi.Reset();
        lblLoi.Text = bangketnoi.Rows[0]["Errmsg"].ToString();
    }
}
