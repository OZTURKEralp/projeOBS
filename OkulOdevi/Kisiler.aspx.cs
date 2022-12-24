using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OkulOdevi
{
    public partial class Kisiler1 : System.Web.UI.Page
    {
        EfDbContext db = new EfDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Kisiler> rs = db.Kisilers.Include("Departmantlar").ToList();
            if (Convert.ToInt32(Session["departmanId"]) == 2)
                rs = db.Kisilers.Include("Departmantlar").Where(x => x.departmanId == 3).ToList();
            else if (Convert.ToInt32(Session["departmanId"]) == 3)
            {
                var userId = Convert.ToInt32(Session["id"]);
                rs = db.Kisilers.Include("Departmantlar").Where(x => x.id == userId).ToList();
            }

            rptlist.DataSource = rs;
            rptlist.DataBind();

        }
    }
}