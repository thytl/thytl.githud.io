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

public partial class Admin_suaQC : System.Web.UI.Page
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
        //Trạng thái

        cboStatus.Items.Insert(0, "Không sử dụng");
        cboStatus.Items.Insert(1, "Được sử dụng");

    }
    public void Napdulieu(int id)
    {
        DataSetquanlydanhba.sp_QuangcaoSelectDataTable bangketnoi = new DataSetquanlydanhba.sp_QuangcaoSelectDataTable();
        DataSetquanlydanhbaTableAdapters.sp_QuangcaoSelectTableAdapter bien = new DataSetquanlydanhbaTableAdapters.sp_QuangcaoSelectTableAdapter();
        bien.Fill(bangketnoi, id, -1, -1);
        txtten.Text = bangketnoi.Rows[0]["TenCty"].ToString();
        lblTenFile.Text = bangketnoi.Rows[0]["Hinh"].ToString();
        cboStatus.SelectedIndex = int.Parse(bangketnoi.Rows[0]["Status"].ToString());
        txthref.Text = bangketnoi.Rows[0]["Hrep"].ToString();

    }
    protected void cmdEdit_Click(object sender, EventArgs e)
    {
        DataSetquanlydanhba.sp_quangcaoupdateDataTable bangketnoi = new DataSetquanlydanhba.sp_quangcaoupdateDataTable();
        DataSetquanlydanhbaTableAdapters.sp_quangcaoupdateTableAdapter bien = new DataSetquanlydanhbaTableAdapters.sp_quangcaoupdateTableAdapter();
        bien.Fill(bangketnoi, id, txtten.Text.Trim(), lblTenFile.Text.Trim(), txthref.Text.Trim(), cboStatus.SelectedIndex);
        lblLoi.Text = bangketnoi.Rows[0]["ErrMsg"].ToString().Trim();
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

    protected void cmdCancel_Click(object sender, EventArgs e)
    {
        txtten.Text = "";
        txthref.Text = "";
    }
}