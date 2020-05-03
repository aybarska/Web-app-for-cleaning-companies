using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TemizlikSirketi2
{
    public partial class admin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["SirketID"];
                islem = Request.QueryString["islem"];
            }

            SqlCommand komut = new SqlCommand("Select * From Musteriler", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            //silme islem
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete From Musteriler where SirketID=@p1",bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();

            }

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}