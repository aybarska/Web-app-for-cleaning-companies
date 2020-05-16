using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TemizlikSirketi2
{
    public partial class talep : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici1"] == null)
                Response.Redirect("musteri.aspx");
            else
                Response.Write("Hoşgeldiniz " + Session["Kullanici1"].ToString());
        }
    }
}