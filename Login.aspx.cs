using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    
    public void resetuj()
    {

        TextBox1.Text = "";
        TextBox2.Text = "";
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data source = DESKTOP-E4TSG8D; initial catalog = Projekat7; integrated security = true";
        con.Open();
        Label1.Visible = false;

    }
 

    protected void Button1_Click1(object sender, EventArgs e)
    {
        cmd.CommandText = "select PravoPristupa from Korisnik where KorisnickoIme = '" + TextBox1.Text + "' and Sifra = '" + TextBox2.Text + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds, "Korisnik");
        if (ds.Tables[0].Rows.Count > 0)
        {
            string s = cmd.ExecuteScalar().ToString();
            if(s=="admin")
                Response.Redirect("Admin.aspx");
            else
            {
                if (s == "unosilac")
                    Response.Redirect("Unosilac.aspx");
                else Response.Redirect("forma3.aspx");
            }
            
           
            con.Close();
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "*Korisnik nije pronađen!";
            resetuj();
        }
    }
}