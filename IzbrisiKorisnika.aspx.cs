using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class IzbrisiKorisnika : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["desktop-e4tsg8d.Projekat7"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);
        if (!String.IsNullOrWhiteSpace(TextBox1.Text) && !String.IsNullOrWhiteSpace(TextBox2.Text))
        {
            try
            {
                con.Open();
                SqlCommand komanda = new SqlCommand("select * from Korisnik where KorisnickoIme='" + TextBox1.Text + "'and Sifra='" + TextBox2.Text + "'", con);
                SqlDataReader reader = komanda.ExecuteReader();
                if (reader.HasRows)
                {
                    SqlCommand komanda1 = new SqlCommand("delete from Korisnik where KorisnickoIme = '" + TextBox1.Text + "'", con);
                    komanda1.ExecuteNonQuery();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Uspesno ste obrisali korisnika')</script>");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Korisnicko ime ili sifra nisu ispravni')</script>");
                } 
            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
            }
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Sva polja su obavezna')</script>");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
}