using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

public partial class forma3 : System.Web.UI.Page
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

    public override void VerifyRenderingInServerForm(Control control)
    {
        return;
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
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
}
