using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class UnosiKorisnika : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["desktop-e4tsg8d.Projekat7"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);
        if (!String.IsNullOrWhiteSpace(TextBox1.Text) && !String.IsNullOrWhiteSpace(TextBox2.Text) && !String.IsNullOrWhiteSpace(TextBox3.Text) && !String.IsNullOrWhiteSpace(TextBox4.Text) && !String.IsNullOrWhiteSpace(TextBox5.Text))
        {
            try
            {
                con.Open();
                SqlCommand komanda = new SqlCommand("select * from Korisnik where KorisnickoIme='" + TextBox4.Text + "'", con);
                SqlDataReader reader = komanda.ExecuteReader();
                if (reader.HasRows)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Korisnicko ime vec postoji')</script>");
                    TextBox4.Focus();
                }
                else
                {
                    SqlCommand komanda1 = new SqlCommand("insert into Korisnik values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", con);
                    komanda1.ExecuteNonQuery();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Uspesno ste uneli novog korisnika')</script>");
                }
            }
            catch (Exception ex)
            {
              
            }
            finally
            {
                con.Close();
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Sva polja su obavezna')</script>");
        }
    }
}