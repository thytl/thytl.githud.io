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

public partial class design_SearchControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click1(object sender, EventArgs e)
    {
        if (txtSearch.Text != "")
        {
            string biensystem = Request["cbSystemRight"];
            DataSetquanlydanhba.SearchdoituongDataTable bang = new DataSetquanlydanhba.SearchdoituongDataTable();
            DataSetquanlydanhbaTableAdapters.SearchdoituongTableAdapter bien = new DataSetquanlydanhbaTableAdapters.SearchdoituongTableAdapter();
            bang.Reset();
            bien.Fill(bang, txtSearch.Text.Trim(), Convert.ToInt16(biensystem));
            Session["search"] = bang;
        }
        Response.Redirect("Timkiem.aspx");
    }
    protected void btnSearch1_Click(object sender, ImageClickEventArgs e)
    {
        if (txtSearch.Text != "")
        {
            Session.Remove("search");
            string biensystem = Request["cbSystemRight"];
            DataSetquanlydanhba.SearchdoituongDataTable bang = new DataSetquanlydanhba.SearchdoituongDataTable();
            DataSetquanlydanhbaTableAdapters.SearchdoituongTableAdapter bien = new DataSetquanlydanhbaTableAdapters.SearchdoituongTableAdapter();
            bang.Reset();
            bien.Fill(bang, txtSearch.Text.Trim(), Convert.ToInt16(biensystem));
            Session["search"] = bang;
        }
        Response.Redirect("Timkiem.aspx");
    }
    protected void bntSearch3_Click(object sender, EventArgs e)
    {
        if (txtSearch.Text != "")
        {
            Session.Remove("search");
            string biensystem = Request["cbSystemRight"];
            DataSetquanlydanhba.SearchdoituongDataTable bang = new DataSetquanlydanhba.SearchdoituongDataTable();
            DataSetquanlydanhbaTableAdapters.SearchdoituongTableAdapter bien = new DataSetquanlydanhbaTableAdapters.SearchdoituongTableAdapter();
            bang.Reset();
            bien.Fill(bang, txtSearch.Text.Trim(), Convert.ToInt16(biensystem));
            Session["search"] = bang;
        }
    }
}
