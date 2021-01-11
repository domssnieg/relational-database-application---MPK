using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplikacja_dyplomowa.Dodaj
{
    public partial class Dodaj_stanowisko_do_działu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSource3.Insert();
            Response.Redirect("~/Dodaj/Dodaj_stanowisko_do_działu.aspx");
        }
    }
}