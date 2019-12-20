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

public partial class Admin_themdoituong : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt16(Session["BienKT"]) == 0)
            Response.Redirect("dangnhap.aspx"); 
    }
    protected void bntCancel_Click(object sender, EventArgs e)
    {
        txtten.Text = "";
        txtdiachi.Text = "";
        txtemail.Text = "";
        txtsodienthoai.Text = "";
        txtten.Focus();
    }
    protected void bntCreateUser_Click(object sender, EventArgs e)
    {
        string biensystem = Request["cbSystemRight"];
        DataSetquanlydanhba.spud_DoituonginsertDataTable bangketnoi = new DataSetquanlydanhba.spud_DoituonginsertDataTable();
        DataSetquanlydanhbaTableAdapters.spud_DoituonginsertTableAdapter bien = new DataSetquanlydanhbaTableAdapters.spud_DoituonginsertTableAdapter();
        bangketnoi.Reset();
        bien.Fill(bangketnoi, txtten.Text.Trim(),txttenkhongdau.Text.Trim(), txtdiachi.Text.Trim(), txtemail.Text.Trim(), txtsodienthoai.Text.Trim(), Convert.ToInt16(biensystem));
        lblLoi.Text = bangketnoi.Rows[0]["Errmsg"].ToString();
    }
}
