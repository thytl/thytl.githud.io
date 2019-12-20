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

public partial class Admin_doimatkhau : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt16(Session["BienKT"]) == 0)
            Response.Redirect("dangnhap.aspx");
    }
    protected void blbdoi_Click(object sender, EventArgs e)
    {
        if (txtNewPassword.Text.Trim() != txtConfirmNewPassword.Text.Trim())
            lblloi.Text = "Nhập mật khẩu mới";
        else {
            lblloi.Text = "";
            DataSetquanlydanhba.sp_UserChangePasswordDataTable bangketnoi = new DataSetquanlydanhba.sp_UserChangePasswordDataTable();
            DataSetquanlydanhbaTableAdapters.sp_UserChangePasswordTableAdapter bien = new DataSetquanlydanhbaTableAdapters.sp_UserChangePasswordTableAdapter();
            bangketnoi.Reset();
            bien.Fill(bangketnoi,txtUserName.Text.Trim(),txtOldPassword.Text.Trim(),txtNewPassword.Text.Trim());
            if ((bangketnoi.Rows.Count) > 0)
            {
                lblnhan.Text = bangketnoi.Rows[0]["ErrMsg"].ToString();
                this.lblloi.Text = "";
            }

        }
    }
}
