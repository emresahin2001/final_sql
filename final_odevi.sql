USE [master]
GO
/****** Object:  Database [final]    Script Date: 1/21/2021 10:02:24 PM ******/
CREATE DATABASE [final]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'vize', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER02\MSSQL\DATA\vize.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'vize_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER02\MSSQL\DATA\vize_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [final] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [final].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [final] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [final] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [final] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [final] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [final] SET ARITHABORT OFF 
GO
ALTER DATABASE [final] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [final] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [final] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [final] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [final] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [final] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [final] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [final] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [final] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [final] SET  DISABLE_BROKER 
GO
ALTER DATABASE [final] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [final] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [final] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [final] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [final] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [final] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [final] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [final] SET RECOVERY FULL 
GO
ALTER DATABASE [final] SET  MULTI_USER 
GO
ALTER DATABASE [final] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [final] SET DB_CHAINING OFF 
GO
ALTER DATABASE [final] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [final] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [final] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [final] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'final', N'ON'
GO
ALTER DATABASE [final] SET QUERY_STORE = OFF
GO
USE [final]
GO
/****** Object:  Table [dbo].[fiyat]    Script Date: 1/21/2021 10:02:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fiyat](
	[Id] [int] NOT NULL,
	[fiyat] [money] NOT NULL,
	[FiyatId] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[marka]    Script Date: 1/21/2021 10:02:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marka](
	[Id] [int] NOT NULL,
	[Marka] [nvarchar](20) NOT NULL,
	[RenkId] [nvarchar](20) NOT NULL,
 CONSTRAINT [PKC_MarkaId] PRIMARY KEY CLUSTERED 
(
	[RenkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[model]    Script Date: 1/21/2021 10:02:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[model](
	[Id] [int] NOT NULL,
	[Model] [nvarchar](20) NOT NULL,
	[ModelId] [nvarchar](20) NOT NULL,
	[FiyatId] [nvarchar](20) NOT NULL,
 CONSTRAINT [PKC_z] PRIMARY KEY CLUSTERED 
(
	[FiyatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renk]    Script Date: 1/21/2021 10:02:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renk](
	[Id] [int] NOT NULL,
	[Renk] [nvarchar](20) NOT NULL,
	[RenkId] [nvarchar](20) NOT NULL,
	[ModelId] [nvarchar](20) NOT NULL,
 CONSTRAINT [PKC_y] PRIMARY KEY CLUSTERED 
(
	[ModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (1, 88500.0000, N'fiyat_1')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (2, 74700.0000, N'fiyat_2')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (3, 76500.0000, N'fiyat_3')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (4, 78500.0000, N'fiyat_4')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (5, 120250.0000, N'fiyat_5')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (6, 150500.0000, N'fiyat_6')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (7, 156300.0000, N'fiyat_7')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (8, 170500.0000, N'fiyat_8')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (9, 70500.0000, N'fiyat_9')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (10, 75500.0000, N'fiyat_10')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (11, 85500.0000, N'fiyat_11')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (12, 90500.0000, N'fiyat_12')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (13, 100500.0000, N'fiyat_13')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (14, 110500.0000, N'fiyat_14')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (15, 115500.0000, N'fiyat_15')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (16, 120500.0000, N'fiyat_16')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (17, 125430.0000, N'fiyat_17')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (18, 140250.0000, N'fiyat_18')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (19, 158500.0000, N'fiyat_19')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (20, 165600.0000, N'fiyat_20')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (21, 170500.0000, N'fiyat_21')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (22, 190500.0000, N'fiyat_22')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (23, 210000.0000, N'fiyat_23')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (24, 150500.0000, N'fiyat_24')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (25, 120500.0000, N'fiyat_25')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (26, 134250.0000, N'fiyat_26')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (27, 125500.0000, N'fiyat_27')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (28, 180000.0000, N'fiyat_28')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (29, 75500.0000, N'fiyat_29')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (30, 80400.0000, N'fiyat_30')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (31, 85500.0000, N'fiyat_31')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (32, 88000.0000, N'fiyat_32')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (33, 93500.0000, N'fiyat_33')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (34, 98500.0000, N'fiyat_34')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (35, 110500.0000, N'fiyat_35')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (36, 89500.0000, N'fiyat_36')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (37, 93500.0000, N'fiyat_37')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (38, 98500.0000, N'fiyat_38')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (39, 67500.0000, N'fiyat_39')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (40, 76000.0000, N'fiyat_40')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (41, 65500.0000, N'fiyat_41')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (42, 75500.0000, N'fiyat_42')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (43, 98500.0000, N'fiyat_43')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (44, 129500.0000, N'fiyat_44')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (45, 89500.0000, N'fiyat_45')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (46, 98800.0000, N'fiyat_46')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (47, 96700.0000, N'fiyat_47')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (48, 87500.0000, N'fiyat_48')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (49, 78000.0000, N'fiyat_49')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (50, 75500.0000, N'fiyat_50')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (51, 76250.0000, N'fiyat_51')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (52, 67350.0000, N'fiyat_52')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (53, 76250.0000, N'fiyat_53')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (54, 78500.0000, N'fiyat_54')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (55, 75000.0000, N'fiyat_55')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (56, 73500.0000, N'fiyat_56')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (57, 88500.0000, N'fiyat_57')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (58, 100500.0000, N'fiyat_58')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (59, 105000.0000, N'fiyat_59')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (60, 150500.0000, N'fiyat_60')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (61, 170500.0000, N'fiyat_61')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (62, 190000.0000, N'fiyat_62')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (63, 230500.0000, N'fiyat_63')
INSERT [dbo].[fiyat] ([Id], [fiyat], [FiyatId]) VALUES (64, 240500.0000, N'fiyat_64')
GO
INSERT [dbo].[marka] ([Id], [Marka], [RenkId]) VALUES (1, N'Alfa Romeo', N'renk_1')
INSERT [dbo].[marka] ([Id], [Marka], [RenkId]) VALUES (10, N'Volkswagen', N'renk_10')
INSERT [dbo].[marka] ([Id], [Marka], [RenkId]) VALUES (11, N'Tofas', N'renk_11')
INSERT [dbo].[marka] ([Id], [Marka], [RenkId]) VALUES (12, N'Tata', N'renk_12')
INSERT [dbo].[marka] ([Id], [Marka], [RenkId]) VALUES (2, N'Aston Martin', N'renk_2')
INSERT [dbo].[marka] ([Id], [Marka], [RenkId]) VALUES (3, N'Audi', N'renk_3')
INSERT [dbo].[marka] ([Id], [Marka], [RenkId]) VALUES (4, N'Bentley', N'renk_4')
INSERT [dbo].[marka] ([Id], [Marka], [RenkId]) VALUES (5, N'Citroen', N'renk_5')
INSERT [dbo].[marka] ([Id], [Marka], [RenkId]) VALUES (6, N'Daica', N'renk_6')
INSERT [dbo].[marka] ([Id], [Marka], [RenkId]) VALUES (7, N'Hyundai', N'renk_7')
INSERT [dbo].[marka] ([Id], [Marka], [RenkId]) VALUES (8, N'Fiat', N'renk_8')
INSERT [dbo].[marka] ([Id], [Marka], [RenkId]) VALUES (9, N'Renault', N'renk_9')
GO
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (1, N'giulia', N'model_1', N'fiyat_1')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (10, N'A4 sedan', N'model_10', N'fiyat_10')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (11, N'A4 avant', N'model_11', N'fiyat_11')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (12, N'A4 allroad quattro', N'model_12', N'fiyat_12')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (13, N'A5 coupé', N'model_13', N'fiyat_13')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (14, N'A5 sportback', N'model_14', N'fiyat_14')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (15, N'A5 cabrio', N'model_15', N'fiyat_15')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (16, N'A6 sedan', N'model_16', N'fiyat_16')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (17, N'A6 avant', N'model_17', N'fiyat_17')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (18, N'A6 allroad quattro', N'model_18', N'fiyat_18')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (19, N'A7 sportback', N'model_19', N'fiyat_19')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (2, N'giulietta', N'model_2', N'fiyat_2')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (20, N'A8 L', N'model_20', N'fiyat_20')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (21, N'Q2', N'model_21', N'fiyat_21')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (22, N'Q5', N'model_22', N'fiyat_22')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (23, N'Q7', N'model_23', N'fiyat_23')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (24, N'Q8', N'model_24', N'fiyat_24')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (25, N'mulsame', N'model_25', N'fiyat_25')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (26, N'continental', N'model_26', N'fiyat_26')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (27, N'new bentayga', N'model_27', N'fiyat_27')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (28, N'C1', N'model_28', N'fiyat_28')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (29, N'C2', N'model_29', N'fiyat_29')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (3, N'stelvio', N'model_3', N'fiyat_3')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (30, N'C3 picosso', N'model_30', N'fiyat_30')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (31, N'C4', N'model_31', N'fiyat_31')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (32, N'C5', N'model_32', N'fiyat_32')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (33, N'C6', N'model_33', N'fiyat_33')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (34, N'C7', N'model_34', N'fiyat_34')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (35, N'C8', N'model_35', N'fiyat_35')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (36, N'C-Elysée', N'model_36', N'fiyat_36')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (37, N'lodgy', N'model_37', N'fiyat_37')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (38, N'logan', N'model_38', N'fiyat_38')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (39, N'sandero', N'model_39', N'fiyat_39')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (4, N'stelvio quadrifoglio', N'model_4', N'fiyat_4')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (40, N'nova', N'model_40', N'fiyat_40')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (41, N'solenza', N'model_41', N'fiyat_41')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (42, N'accent', N'model_42', N'fiyat_42')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (43, N'atos', N'model_43', N'fiyat_43')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (44, N'couple', N'model_44', N'fiyat_44')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (45, N'getz', N'model_45', N'fiyat_45')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (46, N'i10', N'model_46', N'fiyat_46')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (47, N'i20', N'model_47', N'fiyat_47')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (48, N'i30', N'model_48', N'fiyat_48')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (49, N'i40', N'model_49', N'fiyat_49')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (5, N'vantage', N'model_5', N'fiyat_5')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (50, N'albea', N'model_50', N'fiyat_50')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (51, N'egea', N'model_51', N'fiyat_51')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (52, N'linea', N'model_52', N'fiyat_52')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (53, N'panda', N'model_53', N'fiyat_53')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (54, N'punto', N'model_54', N'fiyat_54')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (55, N'tempra', N'model_55', N'fiyat_55')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (56, N'clio', N'model_56', N'fiyat_56')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (57, N'fluence', N'model_57', N'fiyat_57')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (58, N'laguna', N'model_58', N'fiyat_58')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (59, N'symbol', N'model_59', N'fiyat_59')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (6, N'DB 11', N'model_6', N'fiyat_6')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (60, N'talisman', N'model_60', N'fiyat_60')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (61, N'dogan', N'model_61', N'fiyat_61')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (62, N'kartal', N'model_62', N'fiyat_62')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (63, N'serçe', N'model_63', N'fiyat_63')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (64, N'sahin', N'model_64', N'fiyat_64')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (7, N'DBS superleggera', N'model_7', N'fiyat_7')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (8, N'A3 sportback', N'model_8', N'fiyat_8')
INSERT [dbo].[model] ([Id], [Model], [ModelId], [FiyatId]) VALUES (9, N'A3 sedan', N'model_9', N'fiyat_9')
GO
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (1, N'kirmizi', N'renk_1', N'model_1')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (10, N'gri', N'renk_11', N'model_10')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (11, N'turuncu', N'renk_10', N'model_11')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (12, N'kahverengi', N'renk_6', N'model_12')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (13, N'sari', N'renk_5', N'model_13')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (14, N'beyaz', N'renk_3', N'model_14')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (15, N'yesil', N'renk_7', N'model_15')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (16, N'mavi', N'renk_2', N'model_16')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (17, N'mor', N'renk_8', N'model_17')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (18, N'pembe', N'renk_9', N'model_18')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (19, N'kirmizi', N'renk_1', N'model_19')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (2, N'mavi', N'renk_2', N'model_2')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (20, N'siyah', N'renk_4', N'model_20')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (21, N'beyaz', N'renk_3', N'model_21')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (22, N'kirmizi', N'renk_1', N'model_22')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (23, N'mor', N'renk_8', N'model_23')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (24, N'kirmizi', N'renk_1', N'model_24')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (25, N'beyaz', N'renk_3', N'model_25')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (26, N'turuncu', N'renk_10', N'model_26')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (27, N'gri', N'renk_11', N'model_27')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (28, N'siyah', N'renk_4', N'model_28')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (29, N'kahverengi', N'renk_6', N'model_29')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (3, N'sari', N'renk_5', N'model_3')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (30, N'yesil', N'renk_7', N'model_30')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (31, N'kirmizi', N'renk_1', N'model_31')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (32, N'kirmizi', N'renk_1', N'model_32')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (33, N'siyah', N'renk_4', N'model_33')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (34, N'mavi', N'renk_2', N'model_34')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (35, N'yesil', N'renk_7', N'model_35')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (36, N'kirmizi', N'renk_1', N'model_36')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (37, N'yesil', N'renk_7', N'model_37')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (38, N'mor', N'renk_8', N'model_38')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (39, N'turuncu', N'renk_10', N'model_39')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (4, N'yesil', N'renk_7', N'model_4')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (40, N'gri', N'renk_11', N'model_40')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (41, N'kahverengi', N'renk_6', N'model_41')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (42, N'beyaz', N'renk_3', N'model_42')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (43, N'mavi', N'renk_2', N'model_43')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (44, N'yesil', N'renk_7', N'model_44')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (45, N'gri', N'renk_11', N'model_45')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (46, N'sari', N'renk_5', N'model_46')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (47, N'sari', N'renk_5', N'model_47')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (48, N'siyah', N'renk_4', N'model_48')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (59, N'beyaz', N'renk_3', N'model_49')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (5, N'sari', N'renk_5', N'model_5')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (50, N'mavi', N'renk_2', N'model_50')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (51, N'yesil', N'renk_7', N'model_51')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (52, N'turuncu', N'renk_10', N'model_52')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (53, N'gri', N'renk_11', N'model_53')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (54, N'sari', N'renk_5', N'model_54')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (55, N'beyaz', N'renk_3', N'model_55')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (56, N'kirmizi', N'renk_1', N'model_56')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (57, N'yesil', N'renk_7', N'model_57')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (58, N'sari', N'renk_5', N'model_58')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (59, N'pembe', N'renk_9', N'model_59')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (6, N'siyah', N'renk_4', N'model_6')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (60, N'mor', N'renk_8', N'model_60')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (61, N'pembe', N'renk_9', N'model_61')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (62, N'beyaz', N'renk_3', N'model_62')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (63, N'pembe', N'renk_9', N'model_63')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (64, N'kirmizi', N'renk_1', N'model_64')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (7, N'beyaz', N'renk_3', N'model_7')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (8, N'kirmizi', N'renk_1', N'model_8')
INSERT [dbo].[renk] ([Id], [Renk], [RenkId], [ModelId]) VALUES (9, N'yesil', N'renk_7', N'model_9')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [fiyat_FiyatId]    Script Date: 1/21/2021 10:02:24 PM ******/
CREATE NONCLUSTERED INDEX [fiyat_FiyatId] ON [dbo].[fiyat]
(
	[FiyatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [marka_Marka_RenkId_idx]    Script Date: 1/21/2021 10:02:24 PM ******/
CREATE NONCLUSTERED INDEX [marka_Marka_RenkId_idx] ON [dbo].[marka]
(
	[Marka] ASC,
	[RenkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [marka_markaId_idx]    Script Date: 1/21/2021 10:02:24 PM ******/
CREATE NONCLUSTERED INDEX [marka_markaId_idx] ON [dbo].[marka]
(
	[Marka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [model_Model_ModelId_FiyatId_idx]    Script Date: 1/21/2021 10:02:24 PM ******/
CREATE NONCLUSTERED INDEX [model_Model_ModelId_FiyatId_idx] ON [dbo].[model]
(
	[Model] ASC,
	[ModelId] ASC,
	[FiyatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[fiyat]  WITH CHECK ADD FOREIGN KEY([FiyatId])
REFERENCES [dbo].[model] ([FiyatId])
GO
ALTER TABLE [dbo].[model]  WITH CHECK ADD FOREIGN KEY([ModelId])
REFERENCES [dbo].[renk] ([ModelId])
GO
ALTER TABLE [dbo].[renk]  WITH CHECK ADD FOREIGN KEY([RenkId])
REFERENCES [dbo].[marka] ([RenkId])
GO
/****** Object:  StoredProcedure [dbo].[pr_fiyat]    Script Date: 1/21/2021 10:02:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_fiyat]
(
@Id int,
@fiyat nvarchar(20),
@FiyatId nvarchar(20)

)
AS
BEGIN
insert into fiyat(Id,fiyat,FiyatId)values(@Id,@fiyat,@FiyatId);
END;
GO
/****** Object:  StoredProcedure [dbo].[pr_index_bakim_]    Script Date: 1/21/2021 10:02:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pr_index_bakim_]
AS
BEGIN
DECLARE @Database VARCHAR(255)
DECLARE @Table VARCHAR(255)
DECLARE @cmd NVARCHAR(500)
DECLARE @fillfactor INT
 
SET @fillfactor = 90
 
DECLARE DatabaseCursor CURSOR FOR
SELECT name FROM MASTER.dbo.sysdatabases
WHERE name NOT IN ('master','msdb','tempdb','model','distribution')
ORDER BY 1
 
OPEN DatabaseCursor
 
FETCH NEXT FROM DatabaseCursor INTO @Database
WHILE @@FETCH_STATUS = 0
BEGIN
 
SET @cmd = 'DECLARE TableCursor CURSOR FOR SELECT ''['' + table_catalog + ''].['' + table_schema + ''].['' +
table_name + '']'' as tableName FROM ' + @Database + '.INFORMATION_SCHEMA.TABLES
WHERE table_type = ''BASE TABLE'''
 
/* create table cursor  */
EXEC (@cmd)
OPEN TableCursor
 
FETCH NEXT FROM TableCursor INTO @Table
WHILE @@FETCH_STATUS = 0
BEGIN
 
IF (@@MICROSOFTVERSION / POWER(2, 24) >= 9)
BEGIN
/* SQL 2005 veya sonrası*/
SET @cmd = 'ALTER INDEX ALL ON ' + @Table + ' REBUILD WITH (FILLFACTOR = ' + CONVERT(VARCHAR(3),@fillfactor) + ')'
EXEC (@cmd)
END
ELSE
BEGIN
/* SQL 2000 */
DBCC DBREINDEX(@Table,' ',@fillfactor)
END
 
FETCH NEXT FROM TableCursor INTO @Table
END
 
CLOSE TableCursor
DEALLOCATE TableCursor
 
FETCH NEXT FROM DatabaseCursor INTO @Database
END
CLOSE DatabaseCursor
DEALLOCATE DatabaseCursor
END;
GO
/****** Object:  StoredProcedure [dbo].[pr_join1]    Script Date: 1/21/2021 10:02:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_join1]
AS
BEGIN
select M.marka,R.renk,O.model,F.fiyat from marka as M inner join renk as R on M.RenkId=R.RenkId inner join model as O on  R.ModelId=O.ModelId inner join fiyat as F on O.FiyatId=F.FiyatId 
END;
GO
/****** Object:  StoredProcedure [dbo].[pr_join2]    Script Date: 1/21/2021 10:02:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_join2]
AS
BEGIN
select M.marka,R.renk from marka as M inner join renk as R on M.RenkId=R.RenkId
END;
GO
/****** Object:  StoredProcedure [dbo].[pr_join3]    Script Date: 1/21/2021 10:02:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_join3]
AS
BEGIN
select R.renk,O.model from renk as R inner join model as O on R.ModelId=O.ModelId
END;
GO
/****** Object:  StoredProcedure [dbo].[pr_join4]    Script Date: 1/21/2021 10:02:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_join4]
AS
BEGIN
select O.Model,F.fiyat from model as O inner join fiyat as F on O.FiyatId=F.FiyatId
END;
GO
/****** Object:  StoredProcedure [dbo].[pr_marka]    Script Date: 1/21/2021 10:02:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_marka]
(
@Id int,
@Marka nvarchar(20),
@RenkId nvarchar(20)
)
AS
BEGIN
insert into marka(Id,Marka,RenkId)VALUES(@Id,@Marka,@RenkId);
END;
GO
/****** Object:  StoredProcedure [dbo].[pr_model]    Script Date: 1/21/2021 10:02:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_model]
(
@Id int,
@Model nvarchar(20),
@ModelId nvarchar(20),
@FiyatId nvarchar(20)
)
AS
BEGIN
insert into model(Id,Model,ModelId,FiyatId)values(@Id,@Model,@ModelId,@FiyatId);
END;
GO
/****** Object:  StoredProcedure [dbo].[pr_renk]    Script Date: 1/21/2021 10:02:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_renk]
(
@Id int,
@Renk nvarchar(20),
@Renk_Id nvarchar(20),
@ModelId nvarchar(20)
)
AS
BEGIN
insert into renk(Id,Renk,RenkId,ModelId)values(@Id,@Renk,@Renk_Id,@ModelId);
END;
GO
USE [master]
GO
ALTER DATABASE [final] SET  READ_WRITE 
GO
