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

public partial class Admin_ThemQC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt16(Session["BienKT"]) == 0)
        Response.Redirect("dangnhap.aspx");

    }
    protected void btnFileUpload_Click(object sender, EventArgs e)
    {
        string strStatusMessage;
        string strSaveFileAs;
        strSaveFileAs = Server.MapPath("imageQCao/" + myFileUpload.FileName);
        if (myFileUpload.HasFile)
        {
            string fileExt = System.IO.Path.GetExtension(strSaveFileAs);

            if (fileExt == ".jpg" || fileExt == ".gif" || fileExt == ".png" || fileExt == ".bmp")
            {
                try
                {
                    myFileUpload.SaveAs(strSaveFileAs);
                    strStatusMessage = "File name: " +
                        myFileUpload.PostedFile.FileName + "<br>" +
                        myFileUpload.PostedFile.ContentLength + " kb<br>" +
                        "Content type: " + myFileUpload.PostedFile.ContentType;
                }
                catch (Exception ex)
                {
                    strStatusMessage = "Không thể upload tập tin. Đã có lỗi: " + ex.Message.ToString();
                }
            }
            else
            {
                strStatusMessage = "Chỉ được phép upload tập tin jpg, gif, png hoặc bmp";
            }
        }
        else
        {
            strStatusMessage = "Đường dẫn không đúng!";
        }

        lblSaveResults.Text = strStatusMessage;
        lblTenFile.Text = myFileUpload.FileName;

    }
    protected void cmdAdd_Click(object sender, EventArgs e)
    {
        DataSetquanlydanhba.sp_QCInsertDataTable bang = new DataSetquanlydanhba.sp_QCInsertDataTable();
        DataSetquanlydanhbaTableAdapters.sp_QCInsertTableAdapter bien = new DataSetquanlydanhbaTableAdapters.sp_QCInsertTableAdapter();
        bien.Fill(bang, txtcongty.Text.Trim(), lblTenFile.Text.Trim(), txthref.Text.Trim());
        lblLoi.Text = bang.Rows[0]["ErrMsg"].ToString();
        txtcongty.Text = "";
        txthref.Text = "";
        lblSaveResults.Text = "";
        lblTenFile.Text = "";
        txtcongty.Text = "";
    }
    protected void cmdCancel_Click(object sender, EventArgs e)
    {
        txtcongty.Text = "";
        txthref.Text = "";
    }
}
