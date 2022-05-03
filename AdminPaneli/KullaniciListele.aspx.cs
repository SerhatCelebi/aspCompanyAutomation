using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class KullaniciListele : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = db.Kullanicilars.ToList();
            Repeater1.DataSource = model;
            Repeater1.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            var model = db.Kullanicilars.Where(x => x.Adi.Contains(txtSearch.Text) || x.Soyadi.Contains(txtSearch.Text) || x.ID.ToString().Contains(txtSearch.Text)).ToList();
            Repeater1.DataSource = model;
            Repeater1.DataBind();
        }
    }
}