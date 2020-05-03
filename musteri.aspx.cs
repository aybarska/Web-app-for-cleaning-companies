using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TemizlikSirketi2
{
    public partial class About : Page
    {
        sqlsinif bgl = new sqlsinif();

        protected void Page_Load(object sender, EventArgs e)
        {

    
        }

        protected void gonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Musteriler (SirketAdi,SirketTel,SirketMail,adres1,adres2,adres3,SirketSorumlu,SirketSorumluTel,SirketSifre) VALUES (@s1,@s3,@s4,@s5,@s8,@s9,@s6,@s7,@s2)",bgl.baglanti());

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
            bgl.baglanti().Close();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
 