USE [master]
GO
/****** Object:  Database [Kutuphane_bilgileri]    Script Date: 11.05.2020 19:50:33 ******/
CREATE DATABASE [Kutuphane_bilgileri]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Kutuphane_bilgileri', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Kutuphane_bilgileri.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Kutuphane_bilgileri_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Kutuphane_bilgileri_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Kutuphane_bilgileri] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Kutuphane_bilgileri].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Kutuphane_bilgileri] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET ARITHABORT OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET  MULTI_USER 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Kutuphane_bilgileri] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Kutuphane_bilgileri] SET QUERY_STORE = OFF
GO
USE [Kutuphane_bilgileri]
GO
/****** Object:  Table [dbo].[Cantamdaki_Favoriler]    Script Date: 11.05.2020 19:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cantamdaki_Favoriler](
	[Cantadaki_Favari_Kitap_Idsi] [int] IDENTITY(1,1) NOT NULL,
	[Kullanici_idsi] [int] NOT NULL,
	[kitsp_Idsi] [int] NOT NULL,
 CONSTRAINT [PK_Cantamdaki_Favoriler] PRIMARY KEY CLUSTERED 
(
	[Cantadaki_Favari_Kitap_Idsi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cantamdaki_Okunacaklar]    Script Date: 11.05.2020 19:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cantamdaki_Okunacaklar](
	[Okunacak_Kitap_Idsi] [int] IDENTITY(1,1) NOT NULL,
	[Kullanici_Idsi] [int] NOT NULL,
	[Kitap_Idsi] [int] NOT NULL,
 CONSTRAINT [PK_Cantamdaki_Okunacaklar] PRIMARY KEY CLUSTERED 
(
	[Okunacak_Kitap_Idsi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitap_Bilgileri]    Script Date: 11.05.2020 19:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitap_Bilgileri](
	[Kitap_Idsi] [int] IDENTITY(1,1) NOT NULL,
	[Eserin_Adi] [nchar](40) NOT NULL,
	[Eserin_Basim_Tarihi] [nchar](40) NOT NULL,
	[Eserin_Yazari] [nchar](30) NOT NULL,
	[Eserin_Turu] [nchar](20) NOT NULL,
	[Eserin_kategorisi] [nchar](30) NOT NULL,
	[kitap_adedi] [int] NULL,
	[Fotograf] [nchar](150) NULL,
 CONSTRAINT [PK_Kitap_Bilgileri] PRIMARY KEY CLUSTERED 
(
	[Kitap_Idsi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitap_Degistirme_bilgileri]    Script Date: 11.05.2020 19:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitap_Degistirme_bilgileri](
	[Kitap_degisim_Idsi] [int] IDENTITY(1,1) NOT NULL,
	[Kitap_Idsi] [int] NOT NULL,
	[Kullanici_Idsi] [bigint] NOT NULL,
	[Kitabin_KullanicidanAlindigi_tarih] [date] NULL,
	[Kitabin_kullanicidan_Verildigi_Tarih] [date] NOT NULL,
	[Kitabi_Veren_Gorevli] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici_Bilgi]    Script Date: 11.05.2020 19:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici_Bilgi](
	[Kullanici_Idsi] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nchar](20) NOT NULL,
	[Soyadi] [nchar](20) NOT NULL,
	[Id_numarasi] [numeric](11, 0) NOT NULL,
	[Dogum_tarihi] [date] NULL,
	[Egitim_durumu] [nchar](10) NOT NULL,
	[Mail_adresi] [nchar](30) NOT NULL,
	[telefon_numarasi] [numeric](15, 0) NOT NULL,
	[sifre] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Kullanici_Bilgi] PRIMARY KEY CLUSTERED 
(
	[Kullanici_Idsi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yoneticilerin_Bilgisi]    Script Date: 11.05.2020 19:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yoneticilerin_Bilgisi](
	[Yonetici_Idsi] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nchar](20) NULL,
	[Soyadi] [nchar](20) NULL,
	[Id_Numarasi] [numeric](15, 0) NULL,
	[Dogum_Tarihi] [date] NULL,
	[Egitim_Durumu] [nchar](15) NULL,
	[Mail_Adresi] [nchar](30) NULL,
	[Telefon_Numarasi] [numeric](15, 0) NULL,
	[Sifre] [nchar](30) NULL,
 CONSTRAINT [PK_Yoneticilerin_Bilgisi] PRIMARY KEY CLUSTERED 
(
	[Yonetici_Idsi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Kutuphane_bilgileri] SET  READ_WRITE 
GO
