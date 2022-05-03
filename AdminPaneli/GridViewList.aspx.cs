using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class GridViewList : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();

        public string TarihFormati(DateTime date)
        {
            string tarih = " ";
            tarih = date.ToString("dd/MM/yyyy");
            return tarih;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = db.Personellers.ToList();
            GridView1.DataSource = model;
            GridView1.DataBind();
        }

        protected void btnExcelExport_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ContentType = "application/ms-excel";
            Response.AddHeader("content-disposition", string.Format("attachment;filename=RepeaterExport.xls", "selectedrows"));
            Response.ContentEncoding = System.Text.Encoding.GetEncoding("windows-1254");
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            GridView1.RenderControl(hw);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
    }
}