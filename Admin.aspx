<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="https://fonts.googleapis.com/css?family=Rozha+One" rel="stylesheet">
    <title></title>
    <script>
        function printpage()
        {

            var getpanel = document.getElementById("<%= PanelPDF.ClientID%>");
            var MainWindow = window.open('', '', 'height=500,width=800');
            MainWindow.document.write('<html><head><title>Print Page</title>');
            MainWindow.document.write('</head><body>');
            MainWindow.document.write(getpanel.innerHTML);
            MainWindow.document.write('</body></html>');
            MainWindow.document.close();
            setTimeout(function () {
                MainWindow.print();
            }, 500);
            return false;
        }
    </script>
    <style type="text/css">
        body {
            width: 100%;
            margin: 0 auto;
            background-color: #f3f3f3;
            background-image: url(slike/pozadina2.jpg);
            background-size: cover;
            overflow: hidden;
        }

        div#header {
            width: 100%;
            height: 60px;
            margin: 0 auto;       
            background-color: #000;
            color: #FFF;
            text-align: center;
        }

          div#header h1 {
                font-family: 'Rozha One', serif;
                font-size: 42px;
                font-weight: 400;
                text-transform: uppercase;
                padding-top: 0;
                padding-bottom: 10px;
                margin: 0;
                margin-left: 300px;
            }

            div.levi {
                float: left;
                width: 42.5%;                   
            }

            div.srednji {
                float: left;
                width: 42.5%;
            }

            div.desni {
                float: left;
                width: 14.9%;
            }

        div#donji {
            margin-top: 0;
        }
            
        .auto-style1 {
            width: 339px;
            height: 26px;
            font-size: 20px;
        }
            
        .auto-style2 {
            margin-left: 63px;
   
        }
        
        #Button1 {
            margin-left: 380px;
            text-transform: uppercase;
            margin-bottom: 10px;
            padding: 5px 10px;
            background-color: #4dc9e6;
            color: #fff;
            border: 1px solid #4dc9e6;
            border-radius: 25px;
            text-transform: uppercase;
            font-size: 18px;
            font-weight: bold;
            transition: all 0.3s;
        }

        #Button1:hover {
            transform: scale(1.2);
            text-shadow: 0 5px 10px 5px #0a586a;
        }
            
        .auto-style4 {
            margin-left: 0px;
        }
            
        .auto-style5 {
            height: 143px;
            width: 818px;
            margin-top: 0;
        }

        div.desni {
            background-color: #000;
        }

        #Button2 {
            background-color: #000;
            color: #fff;
            border: 1px solid #000;
            text-transform: uppercase;
            padding: 19.75px 0;
        }

        #Button2:hover {
            box-shadow: 5px 5px 5px rgba(255,255,255,0.3);
        }

        #Button3 {
            background-color: #000;
            color: #fff;
            border: 1px solid #000;
            text-transform: uppercase;
            padding: 19.75px 0;
        }

        #Button3:hover {
            box-shadow: 5px 5px 5px rgba(255,255,255,0.3);
        }

        #Button4 {
            background-color: #000;
            color: #fff;
            border: 1px solid #000;
            text-transform: uppercase;
            padding: 19.75px 0;
        }

        #Button4:hover {
            box-shadow: 5px 5px 5px rgba(255,255,255,0.3);
        }

        #Button5 {
            background-color: #000;
            color: #fff;
            border: 1px solid #000;
            text-transform: uppercase;
            padding: 19.75px 0;
        }

        #Button5:hover {
            box-shadow: 5px 5px 5px rgba(255,255,255,0.3);
        }

        #Button6 {
            background-color: #000;
            color: #fff;
            border: 1px solid #000;
            text-transform: uppercase;
            padding: 19.75px 0;
        }

        #Button6:hover {
            box-shadow: 5px 5px 5px rgba(255,255,255,0.3);
        }

        #Button7 {
            background-color: #000;
            color: #fff;
            border: 1px solid #000;
            text-transform: uppercase;
            padding: 19.75px 0;
        }

        #Button7:hover {
            box-shadow: 5px 5px 5px rgba(255,255,255,0.3);
        }

        #Button8 {
            background-color: #000;
            color: #fff;
            border: 1px solid #000;
            text-transform: uppercase;
            padding: 19.75px 0;
        }

        #Button8:hover {
            box-shadow: 5px 5px 5px rgba(255,255,255,0.3);
        }

        #Button9 {
            background-color: #000;
            color: #fff;
            border: 1px solid #000;
            text-transform: uppercase;
            padding: 19.75px 0;
        }

        #Button9:hover {
            box-shadow: 5px 5px 5px rgba(255,255,255,0.3);
        }

        #Button10 {
            background-color: #000;
            color: #fff;
            border: 1px solid #000;
            text-transform: uppercase;
            padding: 19.75px 0;
        }

        #Button10:hover {
            box-shadow: 5px 5px 5px rgba(255,255,255,0.3);
        }

        #Button11 {
            background-color: #000;
            color: #fff;
            border: 1px solid #000;
            text-transform: uppercase;
            padding: 19.75px 0;
        }

        #Button11:hover {
            box-shadow: 5px 5px 5px rgba(255,255,255,0.3);
        }

        #Button12 {
            background-color: #000;
            color: #fff;
            border: 1px solid #000;
            text-transform: uppercase;
            padding: 19.75px 0;
        }

        #Button12:hover {
            box-shadow: 5px 5px 5px rgba(255,255,255,0.3);
        }
            
        .auto-style7 {
            margin-left: 317px;
            }
        .auto-style8 {
            width: 80%;
            overflow: hidden;
            height: 621px;
            margin-top: 20px;
            background-color: rgba(255,255,255,0.4);
            border-radius: 25px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 0;
        }
        .auto-style16 {
            margin-left: 194px;
        }
        .auto-style17 {
            width: 308px;
            height: 26px;
            font-size: 20px;
        }
            
        .auto-style18 {
            margin-top: 0px;
        }
            
        .auto-style19 {
            width: 306px;
            height: 26px;
            font-size: 20px;
        }
        .auto-style20 {
            height: 26px;
            font-size: 20px;
        }
                    
        .auto-style21 {
            margin-right: 0px;
        }

        #TextBox1 {
            background-color: rgba(255,255,255,0.4);
            border-bottom: 1px solid #FFF;
        }

        #TextBox2 {
            background-color: rgba(255,255,255,0.4);
            border-bottom: 1px solid #FFF;
        }

        #TextBox3 {
            background-color: rgba(255,255,255,0.4);
            border-bottom: 1px solid #FFF;
        }

        #TextBox4 {
            background-color: rgba(255,255,255,0.4);
            border-bottom: 1px solid #FFF;
        }

        #TextBox5 {
            background-color: rgba(255,255,255,0.4);
            border-bottom: 1px solid #FFF;
        }

        #TextBox6 {
            background-color: rgba(255,255,255,0.4);
            border-bottom: 1px solid #FFF;
        }

        #TextBox7 {
            background-color: rgba(255,255,255,0.4);
            border-bottom: 1px solid #FFF;
        }

        #TextBox8 {
            background-color: rgba(255,255,255,0.4);
            border-bottom: 1px solid #FFF;
        }

        #TextBox9 {
            background-color: rgba(255,255,255,0.4);
            border-bottom: 1px solid #FFF;
        }

        #TextBox10 {
            background-color: rgba(255,255,255,0.4);
            border-bottom: 1px solid #FFF;
        }

        #TextBox11 {
            background-color: rgba(255,255,255,0.4);
            border-bottom: 1px solid #FFF;
        }

        #TextBox12 {
            background-color: rgba(255,255,255,0.4);
            border-bottom: 1px solid #FFF;
        }

        #TextBox13 {
            background-color: rgba(255,255,255,0.4);
            border-bottom: 1px solid #FFF;
        }

        #TextBox14 {
            background-color: rgba(255,255,255,0.4);
            border-bottom: 1px solid #FFF;
        }

        #TextBox15 {
            background-color: rgba(255,255,255,0.4);
            border-bottom: 1px solid #FFF;
        }

        #TextBox16 {
            background-color: rgba(255,255,255,0.4);
            border-bottom: 1px solid #FFF;
        }

        #TextBox17 {
            background-color: rgba(255,255,255,0.4);
            border-bottom: 1px solid #FFF;
        }

        #TextBox19 {
            background-color: rgba(255,255,255,0.4);
            border-bottom: 1px solid #FFF;
        }

         p#podaci .auto-style20 {
            font-size: 25px;
            font-weight: bold;
            letter-spacing: 3px;
        }

        .auto-style5 {
            font-size: 20px;
            font-weight: bold;
        }
        
                    
    </style>
</head>
<body style="height: 847px">
    <form id="form2" runat="server" class="auto-style4">
       
       <section class="auto-style8">
           <div id="header">
               <h1>&nbsp;Dobrodošli<asp:Button ID="Button1" runat="server" Text="Odjavi se" CssClass="auto-style7" OnClick="Button1_Click" />
               </h1>
           </div>
            <asp:Panel ID="PanelPDF" runat="server">
           <div class="levi" style="height: 453px; width: 42.5%; margin-right: 0px;">
               
                   <p class="auto-style1">Spisak preduzeća<asp:DropDownList ID="DDL" runat="server" CssClass="auto-style2" OnSelectedIndexChanged="DDL_SelectedIndexChanged" AutoPostBack="True" Height="16px" Width="111px">
                       <asp:ListItem></asp:ListItem>
                       </asp:DropDownList>
                   </p> 
                   <p class="auto-style1">
                   <asp:TextBox ID="TextBox9" runat="server" Visible="False" Width="135px" CssClass="auto-style16"></asp:TextBox>
                   </p>
                   <p class="auto-style1">ID preduzeća&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:TextBox ID="TextBox1" runat="server" Width="135px" ReadOnly="True"></asp:TextBox>
                   </p>
                   <p class="auto-style20">Adresa preduzeća&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="135px" ReadOnly="True"></asp:TextBox>
                   </p>
                   <p class="auto-style1">Opština&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" Width="135px" ReadOnly="True" Height="16px"></asp:TextBox>
                   </p>
                   <p class="auto-style1">Poštanski broj&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:TextBox ID="TextBox4" runat="server" Width="135px" ReadOnly="True"></asp:TextBox>
                   </p>
                   <p class="auto-style1">MB preduzeća&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:TextBox ID="TextBox5" runat="server" Width="135px" ReadOnly="True"></asp:TextBox>
                   </p>
                   <p class="auto-style1">PIB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:TextBox ID="TextBox6" runat="server" Width="135px" ReadOnly="True"></asp:TextBox>
                   </p>
                   <p class="auto-style1">Broj računa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True" Width="135px"></asp:TextBox>
                   </p>
                   <p class="auto-style1">Web stranica&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox8" runat="server" ReadOnly="True" Width="135px"></asp:TextBox>
                   </p>

           <div id="donji" class="auto-style5">
              
           &nbsp;&nbsp; Beleška&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
               <br />
               <asp:TextBox ID="TextBox18" runat="server" Height="87px" Width="1093px" CssClass="auto-style18" ></asp:TextBox>     
           </div>
                  
               </div>
      
           <div class="srednji" style="height: 464px; width: 42.5%;">

               <p class="auto-style20">&nbsp;</p>
               <p class="auto-style20" id="podaci">Podaci o kontakt osobi&nbsp; </p>
               <p class="auto-style17">
                   Ime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="TextBox10" runat="server" Width="135px"></asp:TextBox>
               </p>       
               <p class="auto-style19">
                   Prezime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                   <asp:TextBox ID="TextBox11" runat="server" Width="135px"></asp:TextBox>
               </p>
               <p class="auto-style17">Radno mesto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox12" runat="server" Width="135px"></asp:TextBox>
               </p>
               <p class="auto-style20">Oznaka telefona&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox13" runat="server" Width="135px"></asp:TextBox>
               </p>
               <p class="auto-style20">Broj telefona&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="TextBox14" runat="server" Width="135px"></asp:TextBox>
                <p class="auto-style20">Lokal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="TextBox15" runat="server" Width="135px"></asp:TextBox>
                    <p class="auto-style20">Oznaka mail-a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="TextBox16" runat="server" Width="135px"></asp:TextBox>
                        <p class="auto-style20">Adresa mail-a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="TextBox17" runat="server" Width="135px"></asp:TextBox>
                   
           </div>
                  </asp:Panel>
           <div class="desni" style="height: 560px; width: 15%;">
               <asp:Button ID="Button2" runat="server" Text="Unesi preduzeće" Width="178px" OnClick="Button2_Click"  />
               <br />
               <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="Sačuvaj preduzeće" Width="169px" />
               <asp:Button ID="Button4" runat="server" Text="Izmeni preduzeće" Width="170px" OnClick="Button4_Click" />
               <asp:Button ID="Button5" runat="server" Text="Sačuvaj izmene" Width="165px" OnClick="Button5_Click" />
               <asp:Button ID="Button6" runat="server" Text="Izbriši preduzeće" Width="166px" CssClass="auto-style21" OnClick="Button6_Click" />
               <asp:Button ID="Button7" runat="server" Text="Unesi korisnika" Width="169px" OnClick="Button7_Click" />
               <asp:Button ID="Button8" runat="server" Text="Resetuj lozinku" Width="167px" CssClass="auto-style21" OnClick="Button8_Click" />
               <asp:Button ID="Button9" runat="server" Text="Izmeni pravo pristupa" Width="166px" OnClick="Button9_Click" />
               <asp:Button ID="Button10" runat="server" Text="Izbriši korisnika" Width="179px" OnClick="Button10_Click" />
               <asp:Button ID="Button11" runat="server" Text="Štampaj" Width="164px" OnClientClick="return printpage()" />
           </div>

       </section>
          
    </form>
</body>
</html>
