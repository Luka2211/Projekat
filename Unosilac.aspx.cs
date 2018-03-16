using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

public partial class Unosilac : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {


            if (!IsPostBack)
            {


                string CS = ConfigurationManager.ConnectionStrings["desktop-e4tsg8d.Projekat7"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("select Naziv, IDPreduzeca from Preduzece", con);
                    con.Open();
                    DDL.DataSource = cmd.ExecuteReader();
                    DDL.DataTextField = "Naziv";
                    DDL.DataValueField = "IDPreduzeca";
                    DDL.DataBind();
                    con.Close();
                }
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Dobrodosli')</script>");
            }


        }
        catch (Exception ex)
        {

        }
    }

    public void puni_DDL()
    {
        if (!IsPostBack)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Dobrodosli')</script>");

            string CS = ConfigurationManager.ConnectionStrings["desktop-e4tsg8d.Projekat7"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select Naziv, IDPreduzeca from Preduzece", con);
                con.Open();
                DDL.DataSource = cmd.ExecuteReader();
                DDL.DataTextField = "Naziv";
                DDL.DataValueField = "IDPreduzeca";
                DDL.DataBind();
                con.Close();
            }
        }
    }


    public void resetuj()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";
        TextBox15.Text = "";
        TextBox16.Text = "";
        TextBox17.Text = "";
        TextBox18.Text = "";

    }


    protected void DDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["desktop-e4tsg8d.Projekat7"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from Preduzece where Naziv='" + DDL.SelectedItem.Text + "'", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                TextBox1.Text = reader[0].ToString();
                TextBox2.Text = reader[2].ToString();
                TextBox3.Text = reader[3].ToString();
                TextBox4.Text = reader[4].ToString();
                TextBox5.Text = reader[5].ToString();
                TextBox6.Text = reader[6].ToString();
                TextBox7.Text = reader[7].ToString();
                TextBox8.Text = reader[8].ToString();
                TextBox10.Text = reader[9].ToString();
                TextBox11.Text = reader[10].ToString();
                TextBox12.Text = reader[11].ToString();
                TextBox13.Text = reader[12].ToString();
                TextBox14.Text = reader[13].ToString();
                TextBox15.Text = reader[14].ToString();
                TextBox16.Text = reader[15].ToString();
                TextBox17.Text = reader[16].ToString();
                TextBox18.Text = reader[17].ToString();
            }
            con.Close();

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.ReadOnly = false;
        TextBox2.ReadOnly = false;
        TextBox3.ReadOnly = false;
        TextBox4.ReadOnly = false;
        TextBox5.ReadOnly = false;
        TextBox6.ReadOnly = false;
        TextBox7.ReadOnly = false;
        TextBox8.ReadOnly = false;
        TextBox9.Visible = true;
        TextBox9.Text = "Unesi ime preduzeca";
        TextBox9.ReadOnly = false;

        resetuj();

    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment; filename-print.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);

        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);

        PanelPDF.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 10f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);

        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();

        Response.Write(pdfDoc);
        Response.End();
    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["desktop-e4tsg8d.Projekat7"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Preduzece values ('" + Convert.ToInt32(TextBox1.Text) + "','" + TextBox9.Text + "','" + TextBox2.Text + "', '" + TextBox3.Text + "',  '" + Convert.ToInt32(TextBox4.Text) + "',  '" + TextBox5.Text + "', '" + TextBox6.Text + "',  '" + TextBox7.Text + "', '" + TextBox8.Text + "', '" + TextBox10.Text + "', '" + TextBox11.Text + "', '" + TextBox12.Text + "', '" + TextBox13.Text + "', '" + TextBox14.Text + "', '" + TextBox15.Text + "', '" + TextBox16.Text + "', '" + TextBox17.Text + "' , '" + TextBox18.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        resetuj();
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Uspesno uneto novo preduzece')</script>");
        puni_DDL();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox1.ReadOnly = true;
        TextBox2.ReadOnly = false;
        TextBox3.ReadOnly = false;
        TextBox4.ReadOnly = false;
        TextBox5.ReadOnly = false;
        TextBox6.ReadOnly = false;
        TextBox7.ReadOnly = false;
        TextBox8.ReadOnly = false;
        TextBox9.ReadOnly = false;
        TextBox9.Visible = true;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        TextBox9.Visible = false;
        string CS = ConfigurationManager.ConnectionStrings["desktop-e4tsg8d.Projekat7"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update Preduzece set  AdresaPreduzeca='" + TextBox2.Text + "', Opstina='" + TextBox3.Text + "', PostanskiBroj='" + int.Parse(TextBox4.Text) + "', MaticniBroj='" + TextBox5.Text + "', PIB='" + TextBox6.Text + "', BrojRacuna='" + TextBox7.Text + "', WebStranica='" + TextBox8.Text + "', Ime='" + TextBox10.Text + "', Prezime='" + TextBox11.Text + "', RadnoMesto='" + TextBox12.Text + "', OznakaTipaTelefon='" + TextBox13.Text + "', BrojTelefona='" + TextBox14.Text + "', Lokal='" + TextBox15.Text + "', OznakaTipaMail='" + TextBox16.Text + "', AdresaMail='" + TextBox17.Text + "', Beleska='" + TextBox18.Text + "', where IDPreduzeca=" + DDL.SelectedValue, con);
            cmd.ExecuteNonQuery();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Uspesno sacuvano')</script>");
        }
        catch (Exception)
        {


        }
        finally
        {
            con.Close();
        }
    }
}