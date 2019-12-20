using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class VMenu : System.Web.UI.UserControl
{
    DataSetquanlydanhba.sp_QuangcaoSelectByIDDataTable bang = new DataSetquanlydanhba.sp_QuangcaoSelectByIDDataTable();
    DataSetquanlydanhbaTableAdapters.sp_QuangcaoSelectByIDTableAdapter bien = new DataSetquanlydanhbaTableAdapters.sp_QuangcaoSelectByIDTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        laydulieu(-1, 1);
    }
    public void laydulieu(int an, int hien)
    {
        bang.Reset();
        bien.Fill(bang, 0, an, hien);
        rptPro.DataBind();
    }
    public DataTable getquangcaoselectbyid(int id)
    {
        DataSetquanlydanhba.sp_QuangcaoSelectByIDDataTable bang = new DataSetquanlydanhba.sp_QuangcaoSelectByIDDataTable();
        DataSetquanlydanhbaTableAdapters.sp_QuangcaoSelectByIDTableAdapter bien = new DataSetquanlydanhbaTableAdapters.sp_QuangcaoSelectByIDTableAdapter();
        bang.Reset();
        bien.Fill(bang, id, -1, 1);
        return bang;
    }
}
