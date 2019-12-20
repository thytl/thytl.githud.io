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

public partial class design_Danhba : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        laydulieu();

    }
    public int getStt(int sOrder)
    {

        int stt = (CollectionPager2.CurrentPage - 1) * CollectionPager2.PageSize + sOrder;

        return stt;

    }
    public void laydulieu()
    {
        if (Session["search"] != null)
        {
            DataTable bangketnoi = (DataTable)Session["search"];
            if (bangketnoi.Rows.Count == 0)
                lblMsg.Text = "Không tìm thấy dữ liệu!!";
            else
            {
                //phan trang cuoi
                CollectionPager2.MaxPages = 10000;

                CollectionPager2.PageSize = 5; // số items hiển thị trên một trang

                CollectionPager2.DataSource = bangketnoi.DefaultView;

                CollectionPager2.BindToControl = grSearch;

                grSearch.DataSource = CollectionPager2.DataSourcePaged;
                grSearch.DataBind();


            }
        }

    }
}
