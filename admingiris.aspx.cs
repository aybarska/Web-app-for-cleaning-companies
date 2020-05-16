using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TemizlikSirketi2
{
    public partial class admingiris : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                lblBilgi.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string kullanici = txtKullaniciAdi.Text;
            string sifre = txtSifre.Text;
            SqlConnection baglan = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=TemizlikSirketi;Integrated Security=True");
            SqlCommand sorgula = new SqlCommand("SELECT * FROM Yonetici WHERE KullaniciAdi=@KullaniciAdi AND Sifre=@Sifre", baglan);
            sorgula.Parameters.AddWithValue("@KullaniciAdi", kullanici);
            sorgula.Parameters.AddWithValue("@Sifre", sifre);
            baglan.Open();
            SqlDataReader oku = sorgula.ExecuteReader();
            if (oku.Read())
            {
                Session["Kullanici"] = oku["KullaniciAdi"].ToString();
                Response.Redirect("admin.aspx");
            }
            else
                lblBilgi.Text = "Kullanıcı adı yada şifre hatalı!";
            oku.Close();
            baglan.Close();
            baglan.Dispose();

        }
    }
}