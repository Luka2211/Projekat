USE [Projekat7]
GO
/****** Object:  Table [dbo].[Preduzece]    Script Date: 3/16/2018 8:01:34 PM ******/
DROP TABLE [dbo].[Preduzece]
GO
/****** Object:  Table [dbo].[Korisnik]    Script Date: 3/16/2018 8:01:34 PM ******/
DROP TABLE [dbo].[Korisnik]
GO
/****** Object:  Table [dbo].[Korisnik]    Script Date: 3/16/2018 8:01:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Korisnik](
	[Ime] [nvarchar](50) NOT NULL,
	[Prezime] [nvarchar](50) NOT NULL,
	[Jmbg] [nvarchar](13) NOT NULL,
	[KorisnickoIme] [nvarchar](50) NOT NULL,
	[Sifra] [nvarchar](50) NOT NULL,
	[PravoPristupa] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[KorisnickoIme] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preduzece]    Script Date: 3/16/2018 8:01:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preduzece](
	[IDPreduzeca] [int] NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL,
	[AdresaPreduzeca] [nvarchar](50) NOT NULL,
	[Opstina] [nvarchar](50) NOT NULL,
	[PostanskiBroj] [int] NOT NULL,
	[MaticniBroj] [nvarchar](50) NOT NULL,
	[PIB] [nvarchar](50) NOT NULL,
	[BrojRacuna] [nvarchar](50) NOT NULL,
	[WebStranica] [nvarchar](50) NOT NULL,
	[Ime] [nvarchar](50) NOT NULL,
	[Prezime] [nvarchar](50) NOT NULL,
	[RadnoMesto] [nvarchar](50) NOT NULL,
	[OznakaTipaTelefon] [nvarchar](50) NOT NULL,
	[BrojTelefona] [nvarchar](50) NOT NULL,
	[Lokal] [nvarchar](50) NOT NULL,
	[OznakaTipaMail] [nvarchar](50) NOT NULL,
	[AdresaMail] [nvarchar](50) NOT NULL,
	[Beleska] [nvarchar](50) NULL,
 CONSTRAINT [PK__Preduzec__5373EAC1E2195B22] PRIMARY KEY CLUSTERED 
(
	[IDPreduzeca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Korisnik] ([Ime], [Prezime], [Jmbg], [KorisnickoIme], [Sifra], [PravoPristupa]) VALUES (N'Jovan', N'Popovic', N'6414114131', N'jovan123', N'12345', N'unosilac')
INSERT [dbo].[Korisnik] ([Ime], [Prezime], [Jmbg], [KorisnickoIme], [Sifra], [PravoPristupa]) VALUES (N'Jovana', N'Lukic', N'20036201252', N'jovana123', N'12345', N'admin')
INSERT [dbo].[Preduzece] ([IDPreduzeca], [Naziv], [AdresaPreduzeca], [Opstina], [PostanskiBroj], [MaticniBroj], [PIB], [BrojRacuna], [WebStranica], [Ime], [Prezime], [RadnoMesto], [OznakaTipaTelefon], [BrojTelefona], [Lokal], [OznakaTipaMail], [AdresaMail], [Beleska]) VALUES (1, N'ITS', N'Savski nasip 7', N'Novi Beograd', 11000, N'55555', N'7582165', N'3625145255', N'www.its.edu.rs', N'Luka', N'Gutovic', N'Programer', N'Privatni', N'0632512525', N'Savski nasip 7', N'Sluzbeni', N'luka@yahoo.com', N'')
INSERT [dbo].[Preduzece] ([IDPreduzeca], [Naziv], [AdresaPreduzeca], [Opstina], [PostanskiBroj], [MaticniBroj], [PIB], [BrojRacuna], [WebStranica], [Ime], [Prezime], [RadnoMesto], [OznakaTipaTelefon], [BrojTelefona], [Lokal], [OznakaTipaMail], [AdresaMail], [Beleska]) VALUES (2, N'ITHS', N'Savski nasip 8', N'Novi Beograd', 11000, N'22222', N'7582165', N'3625145255', N'www.its.edu.rs', N'Luka', N'Gutovic', N'Programer', N'Privatni', N'0632512525', N'Savski nasip 7', N'Sluzbeni', N'luka@yahoo.com', N'')
INSERT [dbo].[Preduzece] ([IDPreduzeca], [Naziv], [AdresaPreduzeca], [Opstina], [PostanskiBroj], [MaticniBroj], [PIB], [BrojRacuna], [WebStranica], [Ime], [Prezime], [RadnoMesto], [OznakaTipaTelefon], [BrojTelefona], [Lokal], [OznakaTipaMail], [AdresaMail], [Beleska]) VALUES (3, N'Comtrade', N'Savski nasip 7', N'Novi Beograd', 11000, N'33333', N'7582165', N'3625145255', N'www.its.edu.rs', N'Luka', N'Gutovic', N'Programer', N'Privatni', N'0632512525', N'Savski nasip 7', N'Sluzbeni', N'luka@yahoo.com', N'')
