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

public partial class design_UC_danhba : System.Web.UI.UserControl
{
    DataSetquanlydanhba.sp_DoituongSelectByIDDataTable bang = new DataSetquanlydanhba.sp_DoituongSelectByIDDataTable();
    DataSetquanlydanhbaTableAdapters.sp_DoituongSelectByIDTableAdapter bien = new DataSetquanlydanhbaTableAdapters.sp_DoituongSelectByIDTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
            
            laydulieu(-1, 1);
    
    }
    public void laydulieu(int an, int hien)
    {
        bang.Reset();
        bien.Fill(bang, 0, an, hien);
        CollectionPager1.MaxPages = 10000;
        CollectionPager1.PageSize = 5;
        CollectionPager1.DataSource = bang.DefaultView;
        CollectionPager1.BindToControl = dtlDanSachSanPham;
        dtlDanSachSanPham.DataSource = CollectionPager1.DataSourcePaged;
        dtlDanSachSanPham.DataBind();
    }
    public DataTable getdoituongselectbyid(int iddoituong)
    {
        DataSetquanlydanhba.sp_DoituongSelectByIDDataTable bang = new DataSetquanlydanhba.sp_DoituongSelectByIDDataTable();
        DataSetquanlydanhbaTableAdapters.sp_DoituongSelectByIDTableAdapter bien = new DataSetquanlydanhbaTableAdapters.sp_DoituongSelectByIDTableAdapter();
        bang.Reset();
        bien.Fill(bang, iddoituong, -1, 1);
        return bang;
    }
    protected void dtlDanSachSanPham_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
