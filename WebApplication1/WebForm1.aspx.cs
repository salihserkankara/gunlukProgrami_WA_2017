using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("workstation id=gunlukVTB.mssql.somee.com;packet size=4096;user id=kss;pwd=Salih1996.;data source=gunlukVTB.mssql.somee.com;persist security info=False;initial catalog=gunlukVTB");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            try
            {
                string tarih = TextBox1.Text;
                string yazi = CKEditorControl1.Text;
                string sqlstr = "insert into gunluk(yazi,tarih) values('" + yazi + "','" + tarih + "')";
                cmd.CommandText = sqlstr;
                con.Open();
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                con.Close();
                string appPath = Request.PhysicalApplicationPath;
                string filePath = appPath + "Kaydedilenler/" + tarih + ".html";
                StreamWriter w = File.CreateText(filePath);
                w.WriteLine("" + yazi + "");
                w.Flush();
                w.Close();
                Response.Redirect("WebForm1.aspx");
            }
            catch
            {
                Response.Write("Lütfen önce tarih seçin ve günlük yazınızı yazın...");
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand sil = new SqlCommand("delete from gunluk where id=" + GridView1.SelectedValue + "", con);
                con.Open();
                sil.ExecuteNonQuery();
                sil.Dispose();
                con.Close();
                Response.Redirect("WebForm1.aspx");
            }
            catch
            {
                Response.Write("Lütfen Silmek İstediğiniz Satırı Seçiniz..");
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand aktar = new SqlCommand("select yazi,tarih from gunluk where id=" + GridView1.SelectedValue + "", con);
            SqlDataReader oku = null;
            con.Open();
            oku = aktar.ExecuteReader();
            while (oku.Read())
            {
                TextBox1.Text = oku.GetString(1).ToString();
                CKEditorControl1.Text = oku.GetString(0).ToString();
            }
            oku.Close();
            con.Close();
        }
        int id = 0;
        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                string yazi = CKEditorControl1.Text;
                string tarih = TextBox1.Text;
                id = Convert.ToInt32(GridView1.SelectedValue.ToString());
                SqlCommand guncelle = new SqlCommand("update gunluk set yazi='" + yazi + "',tarih='" + tarih + "'where id=" + id + "", con);
                con.Open();
                guncelle.ExecuteNonQuery();
                guncelle.Dispose();
                con.Close();
                string appPath = Request.PhysicalApplicationPath;
                string filePath = appPath + "Kaydedilenler/" + tarih + ".html";
                StreamWriter w = File.CreateText(filePath);
                w.WriteLine("" + yazi + "");
                w.Flush();
                w.Close();
                Response.Redirect("WebForm1.aspx");
            }
            catch
            {
                Response.Write("Lütfen önce listeden güncellemek istediğiniz satırı seçin..");
            }
        }

        protected void Menu5_MenuItemClick(object sender, MenuEventArgs e)
        {
            string tarih = TextBox1.Text.Trim();
            String FileName = "" + tarih + ".html";
            String FilePath = AppDomain.CurrentDomain.BaseDirectory + "/Kaydedilenler/" + FileName;
            System.Web.HttpResponse response = System.Web.HttpContext.Current.Response;
            response.ClearContent();
            response.Clear();
            response.ContentType = "text/plain";
            response.AddHeader("Content-Disposition", "attachment; filename=" + FileName + ";");
            response.TransmitFile(FilePath);
            response.Flush();
            response.End();
        }
    }
}