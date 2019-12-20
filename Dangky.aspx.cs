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

public partial class Dangky : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bntCreateUser_Click(object sender, EventArgs e)
    {
       
    }
    protected void bntCancel_Click(object sender, EventArgs e)
    {

    }
    protected void btnOK_Click(object sender, EventArgs e)
    {
        string biensystem = Request["cbSystemRight"];
        DataSetquanlydanhba.spud_DoituongdangkyDataTable bangketnoi = new DataSetquanlydanhba.spud_DoituongdangkyDataTable();
        DataSetquanlydanhbaTableAdapters.spud_DoituongdangkyTableAdapter bien = new DataSetquanlydanhbaTableAdapters.spud_DoituongdangkyTableAdapter();
        bangketnoi.Reset();
        bien.Fill(bangketnoi, txtten.Text.Trim(), txtTenKG.Text.Trim(), txtdiachi.Text.Trim(), txtemail.Text.Trim(), txtsodienthoai.Text.Trim(), Convert.ToInt16(biensystem));
        lblLoi.Text = bangketnoi.Rows[0]["Errmsg"].ToString();
    }
}
