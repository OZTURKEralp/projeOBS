using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OkulOdevi
{
    public partial class KisiEkle : System.Web.UI.Page
    {
        EfDbContext db = new EfDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var country = db.Departmantlars.ToList();
                drpdepartman.DataSource = country.ToList();
                drpdepartman.DataValueField = "id";
                drpdepartman.DataTextField = "departmanAdi";
                drpdepartman.DataBind();
                drpdepartman.Items.Insert(0, "--Seçiniz--");
            }
        }

        protected void btnkaydet_Click(object sender, EventArgs e)
        {
            Kisiler ks = new Kisiler();
            ks.departmanId = int.Parse(drpdepartman.SelectedValue);
            ks.adiSoyadi = txtadisoyadi.Text;
            ks.telefon = txttelefon.Text;
            ks.email = txtemail.Text;
            ks.sifre = txtsifre.Text;
            db.Kisilers.Add(ks);
            db.SaveChanges();

            Response.Redirect("/Kisiler.aspx");

        }
    }
}