<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UnosiKorisnika.aspx.cs" Inherits="UnosiKorisnika" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
          width: 100%;
          margin: 0 auto;
          background-color: #f3f3f3;
          background-image: url(slike/kucica.jpg);
          background-size: cover;
        }

        #Button1 {
        padding: 20px 90px 20px 30px;
        background-color: #1aafe2;
        color: #FFF;
        border-radius: 25px;
        margin: 0 0 0 100px;
        text-transform: uppercase;
        font-size: 18px;
        font-weight: bold;
        transition: all 0.3s;
        }

        #Button1:hover {
        transform: scale(1.2);
        box-shadow: 0 5px 10px 5px #0a586a;
        }

        #Button2 {
        padding: 20px 90px 20px 30px;
        background-color: #1aafe2;
        color: #FFF;
        border-radius: 25px;
        margin: 0 0 0 50px;
        text-transform: uppercase;
        font-size: 18px;
        font-weight: bold;
        transition: all 0.3s;
        }

        #Button2:hover {
        transform: scale(1.2);
        box-shadow: 0 5px 10px 5px #0a586a;
        }

        #Label1 {
            margin-left: 240px;
            margin-top: 15px;
            font-size: 17px;
            font-style: italic;
            color: #fff;
        }

        .ime {
            height: 100px;
            padding-top: 5px;
            font-size: 22px;
            color: #959595;
            margin: 0;
            margin-left: 20px;
        }

        #TextBox1 {
           width: 150px;
        padding: 10px 25px;
        margin-left: 20px;
        margin-top: 50px;
        background-color: #FFF;
        border: 1px solid #959595;
        border-radius: 5px;
        text-align: left;
        }

        #TextBox2 {
           width: 150px;
        padding: 10px 25px;
        margin-left: 103px;
        margin-top: 15px;
        background-color: #FFF;
        border: 1px solid #959595;
        border-radius: 5px;
        }

        #TextBox3 {
           width: 150px;
        padding: 10px 25px;
        margin-left: 42px;
        margin-top: 15px;
        background-color: #FFF;
        border: 1px solid #959595;
        border-radius: 5px;
        }

        #TextBox4 {
           width: 150px;
        padding: 10px 25px;
        margin-left: 15px;
        margin-top: 15px;
        background-color: #FFF;
        border: 1px solid #959595;
        border-radius: 5px;
        }

         #TextBox5 {
           width: 150px;
        padding: 10px 25px;
        margin-left: 26px;
        margin-top: 15px;
        background-color: #FFF;
        border: 1px solid #959595;
        border-radius: 5px;
        }

         #TextBox6 {
           width: 150px;
        padding: 10px 25px;
        margin-left: 26px;
        margin-top: 15px;
        background-color: #FFF;
        border: 1px solid #959595;
        border-radius: 5px;
        }

        .auto-style1 {
            width: 500px;
            height: 350px;
            background-size: cover;
            opacity: 0.9;
            box-shadow: 0 20px 30px 20px rgba(255, 255, 255, 0.1);
            margin-left: 50%;
            margin-right: 0px;
            margin-top: 45px;
            background-color: rgba(0, 0, 0, 0.3);
        }
                
        .auto-style2 {
            margin-left: 85px;
        }
                
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr class="ime">
                <td>&nbsp; Ime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr class="ime">
                <td>&nbsp;Prezime<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr class="ime">
                <td>&nbsp;JMBG&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style2"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr class="ime">
                <td>&nbsp;Korisničko ime&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr class="ime">
                <td>&nbsp;Lozinka&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr class="ime">
                <td>&nbsp;Pravo pristupa&nbsp;&nbsp; <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><asp:Button ID="Button1" runat="server"  Text="Unesi" Width="99px" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server"  Text="Nazad" Width="99px" />
               </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
