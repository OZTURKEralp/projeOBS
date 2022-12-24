using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OkulOdevi
{
    public partial class KisiSil : System.Web.UI.Page
    {
        EfDbContext db = new EfDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var id = Convert.ToInt32(Request["id"]);
                var ks = db.Kisilers.Where(x => x.id == id).FirstOrDefault();
                db.Kisilers.Remove(ks);
                db.SaveChanges();

                Response.Redirect("/Kisiler.aspx");
            }
        }


    }
}