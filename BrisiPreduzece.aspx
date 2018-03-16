<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BrisiPreduzece.aspx.cs" Inherits="BrisiPreduzece" %>

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
        padding: 20px 60px;
        background-color: #1aafe2;
        color: #FFF;
        border-radius: 25px;
        margin: 0 0 0 10px;
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
        padding: 20px 60px;
        background-color: #1aafe2;
        color: #FFF;
        border-radius: 25px;
        margin: 0 0 0 55px;
        text-transform: uppercase;
        font-size: 18px;
        font-weight: bold;
        transition: all 0.3s;
        }

        #Button2:hover {
        transform: scale(1.2);
        box-shadow: 0 5px 10px 5px #0a586a;
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

        .auto-style2 {
            width: 500px;
            height: 560px;
            background-size: cover;
            opacity: 0.9;
            box-shadow: 0 20px 30px 20px rgba(255, 255, 255, 0.1);
            margin-left: 50%;
            margin-right: 0px;
            margin-top: 45px;
            background-color: rgba(0, 0, 0, 0.3);
        }

        .auto-style3 {
            height: 173px;
        }

        .auto-style4 {
            height: 38px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2">
                <tr class="ime">
                    <td >&nbsp; 
                        <br />
&nbsp; ID preduzeća&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr class="ime">
                    <td class="auto-style4" >&nbsp; Naziv<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style3"><asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Izbriši" /><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Nazad" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
