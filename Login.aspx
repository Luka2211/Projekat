<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
        .auto-style1 {
            margin-left: 18px;
        }
        .auto-style2 {
            margin-left: 119px;
            margin-top: 0px;
        }

        .auto-style4 {
       width: 500px;
       height: 560px;
       margin-left: 50%;
       margin-top: 45px;
       background-color: rgba(0,0,0,0.3);
       background-size: cover;
       opacity: 0.9;
       box-shadow: 0 20px 30px 20px rgba(255,255,255,0.1);       
        }

   

        #Button1 {
        padding: 20px 135px 20px 30px;
        background-color: #1aafe2;
        color: #FFF;
        border-radius: 25px;
        margin: 50px 0 0 180px;
        text-transform: uppercase;
        font-size: 16px;
        font-weight: bold;
        transition: all 0.3s;
        }

        #Button1:hover {
        transform: scale(1.2);
        box-shadow: 0 5px 10px 5px #0a586a;
        }

        .ime {
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
        margin-top: 150px;
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

        #Label1 {
            margin-left: 135px;
            margin-top: 15px;
            font-size: 17px;
            font-style: italic;
            color: #fff;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <section class="auto-style4">
        <div class="auto-style5"><p class="ime">
            Korisničko ime<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1">
            </asp:TextBox>
            </p> 
            <br /><p class="ime">
            Šifra&nbsp; <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2" TextMode="Password" Width="149px"  ></asp:TextBox>
            </p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="auto-style3"  Text="Prijavite se" Width="16px" OnClick="Button1_Click1" />
            <br />
        </div>
        </section>
    </form>
</body>
</html>
