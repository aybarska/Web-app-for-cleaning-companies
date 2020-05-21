using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TemizlikSirketi2
{
    public partial class taleplerim : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        string islem = "";
        string talepid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici1"] == null)
            {
                Response.Redirect("musteri.aspx");
            }
            else
            {
                Label6.Text = "Hoşgeldiniz " + Session["Kullanici1"].ToString();



            }
            if (Page.IsPostBack == false)
            {
                id = Session["SirketID"].ToString();
                talepid = Request.QueryString["TalepID"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand komut = new SqlCommand("Select * from Talep where SirketID=@s1", bgl.baglanti());
            komut.Parameters.AddWithValue("@s1", id);
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
            //silme islem
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete From Talep where TalepID=@p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", talepid);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Redirect("~/taleplerim.aspx");

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/talep.aspx");
        }
    }
}