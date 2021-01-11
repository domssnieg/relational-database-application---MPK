using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplikacja_dyplomowa.Dodaj
{
    public partial class Dodaj_przystanek : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = GridView1.SelectedRow.Cells[1].Text;
            SqlDataSource3.Insert();
        }
    }
}