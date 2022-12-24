using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OkulOdevi
{
    public partial class KisiGuncelle : System.Web.UI.Page
    {
        EfDbContext db = new EfDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    var country = db.Departmantlars.ToList();
                    drpdepartman.DataSource = country.ToList();
                    drpdepartman.DataValueField = "id";
                    drpdepartman.DataTextField = "departmanAdi";
                    drpdepartman.DataBind();
                    drpdepartman.Items.Insert(0, "--Seçiniz--");

                    var id = Convert.ToInt32(Request["id"]);
                    var ks = db.Kisilers.Where(x => x.id == id).FirstOrDefault();
                    drpdepartman.SelectedValue = ks.departmanId.ToString();
                     txtadisoyadi.Text = ks.adiSoyadi;
                    txttelefon.Text = ks.telefon;
                    txtemail.Text = ks.email;
                    txtsifre.Text = ks.sifre;
                }
                catch { }
            }
        }

        protected void btnguncelle_Click(object sender, EventArgs e)
        {
            var id = Convert.ToInt32(Request["id"]);
            var ks = db.Kisilers.Where(x => x.id == id).FirstOrDefault();
            ks.departmanId = int.Parse(drpdepartman.SelectedValue);
            ks.adiSoyadi = txtadisoyadi.Text;
            ks.telefon = txttelefon.Text;
            ks.email = txtemail.Text;
            ks.sifre = txtsifre.Text;
            db.SaveChanges();
            Response.Redirect("/Kisiler.aspx");

        }
    }
}