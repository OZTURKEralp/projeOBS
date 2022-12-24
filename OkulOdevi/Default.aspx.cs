using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OkulOdevi
{
    public partial class Default : System.Web.UI.Page
    {
        EfDbContext db = new EfDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btngirisyap_Click(object sender, EventArgs e)
        {
            var rs = db.Kisilers.Where(x => x.email == txtemail.Text && x.sifre == txtsifre.Text).FirstOrDefault();
            if (rs == null)
                lblmessage.Text = "email veya şifre hatalı..";
            else
            {
                Session["panel"] = true;
                Session["id"] = rs.id;
                Session["departmanId"] = rs.departmanId;
                Session["adisoyadi"] = rs.adiSoyadi;

                Response.Redirect("/Kisiler.aspx");
            }
        }
    }
}