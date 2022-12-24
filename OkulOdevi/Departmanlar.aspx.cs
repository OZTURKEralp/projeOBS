using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OkulOdevi
{
    public partial class Departmanlar : System.Web.UI.Page
    {
        EfDbContext db = new EfDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            rptlist.DataSource = db.Departmantlars.ToList();
            rptlist.DataBind();
        }
    }
}