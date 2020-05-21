using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TemizlikSirketi2
{
    public partial class About : Page
    {
        sqlsinif bgl = new sqlsinif();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(Request.QueryString["Kayit"]))

            {
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert('Kayit Basarili. Lutfen giris yapin.');", true);
            }

        }

        protected void gonder_Click(object sender, EventArgs e)
        {

            SqlCommand komut = new SqlCommand("INSERT INTO Musteriler (SirketAdi,SirketTel,SirketMail,adres1,adres2,adres3,SirketSorumlu,SirketSorumluTel,SirketSifre) VALUES (@s1,@s3,@s4,@s5,@s8,@s9,@s6,@s7,@s2)", bgl.baglanti());

            komut.Parameters.AddWithValue("@s1", SirketAdi.Text);
            komut.Parameters.AddWithValue("@s2", SirketSifre.Text);
            komut.Parameters.AddWithValue("@s3", SirketTel.Text);
            komut.Parameters.AddWithValue("@s4", SirketMail.Text);
            komut.Parameters.AddWithValue("@s5", adres1.Text);
            komut.Parameters.AddWithValue("@s6", SirketSorumlu.Text);
            komut.Parameters.AddWithValue("@s7", SirketSorumluTel.Text);
            komut.Parameters.AddWithValue("@s8", adres2.Text);
            komut.Parameters.AddWithValue("@s9", adres3.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti()
                .Close();

            Response.Redirect("~/musteri.aspx?Kayit=true");
        }

        protected void giris_Click(object sender, EventArgs e)
        {
            string kullanici = txtKullaniciAdi.Text;
            string sifre = txtSifre.Text;
            SqlConnection baglan = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=TemizlikSirketi;Integrated Security=True");
            SqlCommand sorgula = new SqlCommand("SELECT * FROM Musteriler WHERE SirketAdi=@KullaniciAdi AND SirketSifre=@Sifre", baglan);
            sorgula.Parameters.AddWithValue("@KullaniciAdi", kullanici);
            sorgula.Parameters.AddWithValue("@Sifre", sifre);
<<<<<<< HEAD
            SqlDataAdapter sda = new SqlDataAdapter(sorgula);
            DataTable dt = new DataTable();
            sda.Fill(dt);
=======
>>>>>>> master
            baglan.Open();
            SqlDataReader oku = sorgula.ExecuteReader();
            if (oku.Read())
            {
                Session["Kullanici1"] = oku["SirketAdi"].ToString();
<<<<<<< HEAD
                Session["SirketID"] = oku["SirketID"].ToString();
=======
>>>>>>> master
                Response.Redirect("talep.aspx");
            }
            else
                lblBilgi.Text = "Kullanıcı adı yada şifre hatalı!";
            oku.Close();
            baglan.Close();
            baglan.Dispose();
        }
    }
}
