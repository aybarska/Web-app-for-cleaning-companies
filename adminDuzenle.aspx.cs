using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TemizlikSirketi2
{
    public partial class adminDuzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["SirketID"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Musteriler where SirketID=@s1", bgl.baglanti());
                komut.Parameters.AddWithValue("@s1", id);

                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[9].ToString();
                    TextBox3.Text = dr[2].ToString();
                    TextBox4.Text = dr[3].ToString();
                    TextBox5.Text = dr[4].ToString();

                    TextBox6.Text = dr[7].ToString();
                    TextBox7.Text = dr[8].ToString();
                    TextBox8.Text = dr[5].ToString();
                    TextBox9.Text = dr[6].ToString();
                    bgl.baglanti().Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Musteriler set SirketAdi=@p1,SirketSifre=@p2,SirketTel=@p3,SirketMail=@p4,adres1=@p5,SirketSorumlu=@p6,SirketSorumluTel=@p7,adres2=@p8,adres3=@p9 where SirketID=@p10", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", TextBox4.Text);
            komut.Parameters.AddWithValue("@p5", TextBox5.Text);

            komut.Parameters.AddWithValue("@p6", TextBox6.Text);
            komut.Parameters.AddWithValue("@p7", TextBox7.Text);
            komut.Parameters.AddWithValue("@p8", TextBox8.Text);
            komut.Parameters.AddWithValue("@p9", TextBox9.Text);
            komut.Parameters.AddWithValue("@p10", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Redirect("~/adminDuzenle.aspx?SirketID=" + id);
        }
    }
}