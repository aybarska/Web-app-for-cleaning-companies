using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
<<<<<<< HEAD
using System.Data.SqlClient;
using System.Drawing;
=======
>>>>>>> master

namespace TemizlikSirketi2
{
    public partial class talep : System.Web.UI.Page
    {
<<<<<<< HEAD
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(Request.QueryString["Olustur"]))

            {
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert('Talep kayit edildi.');", true);
            }
            if (Page.IsPostBack == false)
            {
                if (Session["Kullanici1"] == null)
                {
                    Response.Redirect("musteri.aspx");
                }
                else
                {
                    Label3.Text = "Hoşgeldiniz " + Session["Kullanici1"].ToString();

                    SqlCommand komut = new SqlCommand("Select * from Musteriler where SirketID=@s1", bgl.baglanti());
                    komut.Parameters.AddWithValue("@s1", Session["SirketID"].ToString());
                    SqlDataReader dr = komut.ExecuteReader();
                    id = Request.QueryString["SirketID"];
                    while (dr.Read())
                    {
                        string adres1 = dr[4].ToString();
                        string adres2 = dr[5].ToString();
                        string adres3 = dr[6].ToString();
                        if (adres1 == "yok")
                        {

                        }
                        else
                        {
                         DropDownList2.Items.Add(adres1);
                        }

                        if (adres2 == "yok")
                        {

                        }
                        else
                        {
                            DropDownList2.Items.Add(adres2);
                        }

                        if (adres3 == "yok")
                        {

                        }
                        else
                        {
                            DropDownList2.Items.Add(adres3);
                        }
                       
                        bgl.baglanti().Close();
                    }
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Calendar2.Visible = true;
        }



        protected void Calendar2_SelectionChanged1(object sender, EventArgs e)
        {
            TextBox2.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;
        }

        protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
        {
            DateTime dte = Calendar1.SelectedDate;
            if (e.Day.Date <= dte)
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Gray;
            }
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date >= DateTime.Now.Date && e.Day.Date <= DateTime.Now.AddDays(20))
                e.Cell.Visible = true;
            else
                e.Cell.Visible = false;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Talep (SirketID,TalepBasTarih,TalepBitTarih,TalepCalisanSay,TalepAdres) VALUES (@s1,@s2,@s3,@s4,@s5)", bgl.baglanti());

            string t1 = Convert.ToDateTime(TextBox1.Text).ToString("yyyy-MM-dd");
            string t2 = Convert.ToDateTime(TextBox2.Text).ToString("yyyy-MM-dd");
            komut.Parameters.AddWithValue("@s1", Session["SirketID"].ToString());
            komut.Parameters.AddWithValue("@s2", t1);
            komut.Parameters.AddWithValue("@s3", t2);
            komut.Parameters.AddWithValue("@s4", DropDownList1.SelectedValue.ToString());
            komut.Parameters.AddWithValue("@s5", DropDownList2.SelectedValue.ToString());
            komut.ExecuteNonQuery();
            bgl.baglanti()
                .Close();

            Response.Redirect("~/talep.aspx?Olustur=true");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/taleplerim.aspx");
=======
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici1"] == null)
                Response.Redirect("musteri.aspx");
            else
                Response.Write("Hoşgeldiniz " + Session["Kullanici1"].ToString());
>>>>>>> master
        }
    }
}