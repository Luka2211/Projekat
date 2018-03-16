using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class BrisiPreduzece : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["desktop-e4tsg8d.Projekat7"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);
        if (!String.IsNullOrWhiteSpace(TextBox1.Text) && !String.IsNullOrWhiteSpace(TextBox2.Text))
        {
            try
            {
                con.Open();
                SqlCommand komanda = new SqlCommand("select * from Preduzece where IDPreduzeca='" + TextBox1.Text + "'and Naziv='" + TextBox2.Text + "'", con);
                SqlDataReader reader = komanda.ExecuteReader();
                if (reader.HasRows)
                {
                    SqlCommand komanda1 = new SqlCommand("delete from Preduzece where IDPreduzeca = '" + TextBox1.Text + "'", con);
                    komanda1.ExecuteNonQuery();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Uspesno ste izbrisali preduzece')</script>");
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
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Sva polja su obavezna')</script>");
        }
        TextBox1.Text = "";
        TextBox2.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
}