USE [master]
GO
/****** Object:  Database [QuanLyCoVanHocTap]    Script Date: 12/18/2023 11:54:49 PM ******/
CREATE DATABASE [QuanLyCoVanHocTap]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyCoVanHocTap', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QuanLyCoVanHocTap.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyCoVanHocTap_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QuanLyCoVanHocTap_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyCoVanHocTap].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [QuanLyCoVanHocTap]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/18/2023 11:54:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietCuocHop]    Script Date: 12/18/2023 11:54:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietCuocHop](
	[maCTCH] [varchar](50) NOT NULL,
	[maSv] [varchar](50) NULL,
	[maCH] [varchar](50) NULL,
 CONSTRAINT [PK__ChiTietC__FD27063EDE01528F] PRIMARY KEY CLUSTERED 
(
	[maCTCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietKhenThuong]    Script Date: 12/18/2023 11:54:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKhenThuong](
	[maCTKT] [varchar](50) NOT NULL,
	[ngayKT] [date] NULL,
	[namHoc] [int] NULL,
	[noiDungKhenThuong] [nvarchar](200) NULL,
	[maSV] [varchar](50) NULL,
 CONSTRAINT [PK__ChiTietK__FD26450C28812CBC] PRIMARY KEY CLUSTERED 
(
	[maCTKT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietThongBao]    Script Date: 12/18/2023 11:54:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietThongBao](
	[maCTTB] [varchar](50) NOT NULL,
	[maSv] [varchar](50) NULL,
	[maTB] [varchar](50) NULL,
 CONSTRAINT [PK__ChiTietT__FD26D0E0965F03D4] PRIMARY KEY CLUSTERED 
(
	[maCTTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoVanHocTap]    Script Date: 12/18/2023 11:54:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoVanHocTap](
	[maCVHT] [varchar](50) NOT NULL,
	[tenCVHT] [nvarchar](100) NULL,
	[gioiTinh] [nvarchar](3) NULL,
	[ngaySinh] [date] NULL,
	[diaChi] [nvarchar](200) NULL,
	[cccd] [varchar](12) NULL,
	[matKhau] [nvarchar](40) NULL,
	[Email] [nvarchar](max) NULL,
	[maLop] [varchar](50) NULL,
	[IsDelete] [int] NULL,
 CONSTRAINT [PK__CoVanHoc__FDA6591D307ACD8A] PRIMARY KEY CLUSTERED 
(
	[maCVHT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuocHop]    Script Date: 12/18/2023 11:54:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuocHop](
	[maCH] [varchar](50) NOT NULL,
	[ngayHop] [date] NULL,
	[noiDung] [nvarchar](200) NULL,
	[maCVHT] [varchar](50) NULL,
 CONSTRAINT [PK__CuocHop__7A3E0CEED5AE5FBB] PRIMARY KEY CLUSTERED 
(
	[maCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiemCTXH]    Script Date: 12/18/2023 11:54:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemCTXH](
	[maDiemCTXH] [varchar](50) NOT NULL,
	[SoDiem] [float] NULL,
	[XepLoai] [nvarchar](20) NULL,
	[maSV] [varchar](50) NULL,
 CONSTRAINT [PK__DiemCTXH__86892233835B33BB] PRIMARY KEY CLUSTERED 
(
	[maDiemCTXH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiemRL]    Script Date: 12/18/2023 11:54:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemRL](
	[maDiemRL] [varchar](50) NOT NULL,
	[SoDiem] [float] NULL,
	[XepLoai] [nvarchar](20) NULL,
	[maSV] [varchar](50) NULL,
 CONSTRAINT [PK__DiemRL__5A7ABA74C78EECCD] PRIMARY KEY CLUSTERED 
(
	[maDiemRL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiemTongKet]    Script Date: 12/18/2023 11:54:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemTongKet](
	[maDiemTongKet] [varchar](50) NOT NULL,
	[diemHS10] [float] NULL,
	[diemHS4] [float] NULL,
	[diemChu] [float] NULL,
	[XepLoai] [nvarchar](20) NULL,
	[maSV] [varchar](50) NULL,
 CONSTRAINT [PK__DiemTong__FC89AFDEFF2CC1EB] PRIMARY KEY CLUSTERED 
(
	[maDiemTongKet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 12/18/2023 11:54:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[maLop] [varchar](50) NOT NULL,
	[tenLop] [nvarchar](100) NULL,
	[IsDelete] [int] NULL,
 CONSTRAINT [PK__Lop__261ECAE361597FF8] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 12/18/2023 11:54:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[maSV] [varchar](50) NOT NULL,
	[tenSV] [nvarchar](50) NULL,
	[gioiTinh] [varchar](40) NULL,
	[Email] [nvarchar](max) NULL,
	[ngaySinh] [datetime2](7) NULL,
	[diaChi] [nvarchar](200) NULL,
	[cccd] [varchar](12) NULL,
	[ttht] [nvarchar](50) NULL,
	[ngayVaoTruong] [date] NULL,
	[chuyenNganh] [nvarchar](50) NULL,
	[matKhau] [varchar](40) NULL,
	[maLop] [varchar](50) NULL,
	[IsDelete] [int] NULL,
 CONSTRAINT [PK__SinhVien__7A227A6426B0CB0C] PRIMARY KEY CLUSTERED 
(
	[maSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 12/18/2023 11:54:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[maTB] [varchar](50) NOT NULL,
	[tieuDe] [nvarchar](200) NULL,
	[noiDung] [nvarchar](1000) NULL,
	[ngayDang] [date] NULL,
	[maCVHT] [varchar](50) NULL,
 CONSTRAINT [PK__ThongBao__7A226269AA0E794B] PRIMARY KEY CLUSTERED 
(
	[maTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231218141648_inittial', N'6.0.0')
GO
INSERT [dbo].[CoVanHocTap] ([maCVHT], [tenCVHT], [gioiTinh], [ngaySinh], [diaChi], [cccd], [matKhau], [Email], [maLop], [IsDelete]) VALUES (N'111111111', N'Nguyễn Văn A', N'Nữ', CAST(N'2023-12-18' AS Date), N'123 Nguyễn Văn A', N'2222222222', N'456', N'blkhoa17@gmail.com', N'FF5BA251-11C6-46AD-908B-8AEED4A4DAF1', 0)
INSERT [dbo].[CoVanHocTap] ([maCVHT], [tenCVHT], [gioiTinh], [ngaySinh], [diaChi], [cccd], [matKhau], [Email], [maLop], [IsDelete]) VALUES (N'222222222', NULL, NULL, NULL, NULL, NULL, N'123123', N'hdangkhoa1204@gmail.com', N'F578B1D3-A322-4BBD-B01B-2F0391D57813', 0)
GO
INSERT [dbo].[DiemCTXH] ([maDiemCTXH], [SoDiem], [XepLoai], [maSV]) VALUES (N'0431426B-9E13-4C82-AB04-B54BA9EEEA0A', 0, N'', N'111111111_19')
INSERT [dbo].[DiemCTXH] ([maDiemCTXH], [SoDiem], [XepLoai], [maSV]) VALUES (N'271B818C-192C-4540-B8C9-F8E57FC6E7B8', 0, N'', N'111111111_25')
INSERT [dbo].[DiemCTXH] ([maDiemCTXH], [SoDiem], [XepLoai], [maSV]) VALUES (N'4A13772F-3B03-4DBB-9043-489BEE1960F7', 0, N'', N'111111111_34')
INSERT [dbo].[DiemCTXH] ([maDiemCTXH], [SoDiem], [XepLoai], [maSV]) VALUES (N'66825476-5CF5-4911-BAE0-EDC13DE2465D', 0, N'', N'111111111_27')
INSERT [dbo].[DiemCTXH] ([maDiemCTXH], [SoDiem], [XepLoai], [maSV]) VALUES (N'7DADDCDA-2B25-4508-899D-988665CF84FD', 0, N'', N'111111111_29')
INSERT [dbo].[DiemCTXH] ([maDiemCTXH], [SoDiem], [XepLoai], [maSV]) VALUES (N'895C79BE-2435-4C42-8E5A-0864A5858937', 0, N'', N'111111111_22')
INSERT [dbo].[DiemCTXH] ([maDiemCTXH], [SoDiem], [XepLoai], [maSV]) VALUES (N'8BF2495F-E385-4D0C-91D6-2F9EDA91D9ED', 0, N'', N'111111111_33')
INSERT [dbo].[DiemCTXH] ([maDiemCTXH], [SoDiem], [XepLoai], [maSV]) VALUES (N'995BAE5B-DA78-4AB6-A592-C68300492A89', 0, N'', N'111111111_28')
INSERT [dbo].[DiemCTXH] ([maDiemCTXH], [SoDiem], [XepLoai], [maSV]) VALUES (N'A00261B3-3C0F-4AF5-BB95-80CBBE225AF5', 0, N'', N'111111111_30')
INSERT [dbo].[DiemCTXH] ([maDiemCTXH], [SoDiem], [XepLoai], [maSV]) VALUES (N'A2821488-16F1-4CB9-A04B-20D688EA5FF2', 0, N'', N'111111111_20')
INSERT [dbo].[DiemCTXH] ([maDiemCTXH], [SoDiem], [XepLoai], [maSV]) VALUES (N'B3F3170C-5AA2-4833-ADB7-F46DD3EF7D57', 0, N'', N'111111111_21')
INSERT [dbo].[DiemCTXH] ([maDiemCTXH], [SoDiem], [XepLoai], [maSV]) VALUES (N'B6C813F9-10F1-43B8-80B3-4F3F3A7E869F', 0, N'', N'111111111_23')
INSERT [dbo].[DiemCTXH] ([maDiemCTXH], [SoDiem], [XepLoai], [maSV]) VALUES (N'BC390523-BCF0-45F4-912A-F51ED559FBAE', 0, N'', N'111111111_24')
INSERT [dbo].[DiemCTXH] ([maDiemCTXH], [SoDiem], [XepLoai], [maSV]) VALUES (N'BC8A988B-B041-47EE-82F4-6A4535C437ED', 0, N'', N'111111111_32')
INSERT [dbo].[DiemCTXH] ([maDiemCTXH], [SoDiem], [XepLoai], [maSV]) VALUES (N'CE791458-4F8B-4469-BEBF-C6215F1A60AD', 0, N'', N'111111111_31')
INSERT [dbo].[DiemCTXH] ([maDiemCTXH], [SoDiem], [XepLoai], [maSV]) VALUES (N'F8612C28-885C-4315-ACF9-ADBE3E725416', 0, N'', N'111111111_18')
GO
INSERT [dbo].[DiemRL] ([maDiemRL], [SoDiem], [XepLoai], [maSV]) VALUES (N'045E296E-9B49-437B-B2BE-1A4C30D2F932', 0, N'', N'111111111_20')
INSERT [dbo].[DiemRL] ([maDiemRL], [SoDiem], [XepLoai], [maSV]) VALUES (N'3289B4D7-67A8-44C1-B43B-06198D3C8660', 0, N'', N'111111111_31')
INSERT [dbo].[DiemRL] ([maDiemRL], [SoDiem], [XepLoai], [maSV]) VALUES (N'365A2957-D326-400F-BEA0-31E49FFB4391', 0, N'', N'111111111_18')
INSERT [dbo].[DiemRL] ([maDiemRL], [SoDiem], [XepLoai], [maSV]) VALUES (N'4A0FF45F-1CE9-4B59-9916-082D581E6015', 0, N'', N'111111111_30')
INSERT [dbo].[DiemRL] ([maDiemRL], [SoDiem], [XepLoai], [maSV]) VALUES (N'67063C95-A8AC-497C-AEE9-BC4B5BCF5CE7', 0, N'', N'111111111_19')
INSERT [dbo].[DiemRL] ([maDiemRL], [SoDiem], [XepLoai], [maSV]) VALUES (N'6F01C694-D42C-4C16-A9DB-94F4CC876F46', 0, N'', N'111111111_21')
INSERT [dbo].[DiemRL] ([maDiemRL], [SoDiem], [XepLoai], [maSV]) VALUES (N'76AD2E7E-21E4-4FBA-BA6C-3BDA48B30598', 0, N'', N'111111111_23')
INSERT [dbo].[DiemRL] ([maDiemRL], [SoDiem], [XepLoai], [maSV]) VALUES (N'89F67481-F804-40DD-8388-A31090B471E0', 0, N'', N'111111111_27')
INSERT [dbo].[DiemRL] ([maDiemRL], [SoDiem], [XepLoai], [maSV]) VALUES (N'B9DC0862-FC20-4A35-B148-E93D0469F42C', 0, N'', N'111111111_24')
INSERT [dbo].[DiemRL] ([maDiemRL], [SoDiem], [XepLoai], [maSV]) VALUES (N'C640991E-E837-4B97-BA97-A1F3667320AD', 0, N'', N'111111111_29')
INSERT [dbo].[DiemRL] ([maDiemRL], [SoDiem], [XepLoai], [maSV]) VALUES (N'D2F7E0C0-4827-4B63-8680-BB53F1E57771', 0, N'', N'111111111_25')
INSERT [dbo].[DiemRL] ([maDiemRL], [SoDiem], [XepLoai], [maSV]) VALUES (N'ED769F81-9B0D-457A-87A8-F5A60CF912E3', 0, N'', N'111111111_22')
INSERT [dbo].[DiemRL] ([maDiemRL], [SoDiem], [XepLoai], [maSV]) VALUES (N'F0564C42-BF2E-4E0F-9BA1-6F188C582C00', 0, N'', N'111111111_33')
INSERT [dbo].[DiemRL] ([maDiemRL], [SoDiem], [XepLoai], [maSV]) VALUES (N'F2303A85-9B6A-4887-8D11-17103A6150C5', 0, N'', N'111111111_28')
INSERT [dbo].[DiemRL] ([maDiemRL], [SoDiem], [XepLoai], [maSV]) VALUES (N'F581BB82-6BC6-49B0-8EFC-41D9439C991C', 0, N'', N'111111111_34')
INSERT [dbo].[DiemRL] ([maDiemRL], [SoDiem], [XepLoai], [maSV]) VALUES (N'FDC85B73-4A8E-4E47-A90A-3F49E057BCEC', 0, N'', N'111111111_32')
GO
INSERT [dbo].[DiemTongKet] ([maDiemTongKet], [diemHS10], [diemHS4], [diemChu], [XepLoai], [maSV]) VALUES (N'0CF4436A-003C-4765-AF51-77B61A01A6A4', 0, 0, 0, N'', N'111111111_20')
INSERT [dbo].[DiemTongKet] ([maDiemTongKet], [diemHS10], [diemHS4], [diemChu], [XepLoai], [maSV]) VALUES (N'18D466F6-C943-4B77-AEFF-D99F37D032E8', 0, 0, 0, N'', N'111111111_19')
INSERT [dbo].[DiemTongKet] ([maDiemTongKet], [diemHS10], [diemHS4], [diemChu], [XepLoai], [maSV]) VALUES (N'19416FC7-1060-4A34-9F8C-F1459ABDE8ED', 0, 0, 0, N'', N'111111111_33')
INSERT [dbo].[DiemTongKet] ([maDiemTongKet], [diemHS10], [diemHS4], [diemChu], [XepLoai], [maSV]) VALUES (N'1A7195E5-F9D1-448E-A87D-30F25ED75CEA', 0, 0, 0, N'', N'111111111_30')
INSERT [dbo].[DiemTongKet] ([maDiemTongKet], [diemHS10], [diemHS4], [diemChu], [XepLoai], [maSV]) VALUES (N'1F50BAB6-1E1A-489B-91AE-FB73B50A22B2', 0, 0, 0, N'', N'111111111_29')
INSERT [dbo].[DiemTongKet] ([maDiemTongKet], [diemHS10], [diemHS4], [diemChu], [XepLoai], [maSV]) VALUES (N'2380619F-53B9-45B4-AEB4-85DF514CF0EF', 0, 0, 0, N'', N'111111111_34')
INSERT [dbo].[DiemTongKet] ([maDiemTongKet], [diemHS10], [diemHS4], [diemChu], [XepLoai], [maSV]) VALUES (N'4B296E38-827D-437F-88F3-EF7287039633', 0, 0, 0, N'', N'111111111_23')
INSERT [dbo].[DiemTongKet] ([maDiemTongKet], [diemHS10], [diemHS4], [diemChu], [XepLoai], [maSV]) VALUES (N'4BE9F837-A386-4988-818E-44D3FEDDF8DF', 0, 0, 0, N'', N'111111111_21')
INSERT [dbo].[DiemTongKet] ([maDiemTongKet], [diemHS10], [diemHS4], [diemChu], [XepLoai], [maSV]) VALUES (N'512D6E83-07A0-4812-AAD0-9B69FFF31ACD', 0, 0, 0, N'', N'111111111_28')
INSERT [dbo].[DiemTongKet] ([maDiemTongKet], [diemHS10], [diemHS4], [diemChu], [XepLoai], [maSV]) VALUES (N'5172FF5F-9A35-49A7-9D98-D6D54B62DEF9', 0, 0, 0, N'', N'111111111_32')
INSERT [dbo].[DiemTongKet] ([maDiemTongKet], [diemHS10], [diemHS4], [diemChu], [XepLoai], [maSV]) VALUES (N'57FD604D-6BF1-4F31-9979-DEC2E76C7FC6', 0, 0, 0, N'', N'111111111_24')
INSERT [dbo].[DiemTongKet] ([maDiemTongKet], [diemHS10], [diemHS4], [diemChu], [XepLoai], [maSV]) VALUES (N'75B2A204-CCE8-4B24-A7BC-1DF8104BF6A8', 0, 0, 0, N'', N'111111111_31')
INSERT [dbo].[DiemTongKet] ([maDiemTongKet], [diemHS10], [diemHS4], [diemChu], [XepLoai], [maSV]) VALUES (N'AE0345B9-06EC-4569-8C1E-AED1CE7D4F48', 0, 0, 0, N'', N'111111111_22')
INSERT [dbo].[DiemTongKet] ([maDiemTongKet], [diemHS10], [diemHS4], [diemChu], [XepLoai], [maSV]) VALUES (N'BA62C795-64EB-41A2-AD7B-3EE18FE529C0', 0, 0, 0, N'', N'111111111_25')
INSERT [dbo].[DiemTongKet] ([maDiemTongKet], [diemHS10], [diemHS4], [diemChu], [XepLoai], [maSV]) VALUES (N'E1D7AF43-2105-4201-A204-E932A3BAFF00', 0, 0, 0, N'', N'111111111_18')
INSERT [dbo].[DiemTongKet] ([maDiemTongKet], [diemHS10], [diemHS4], [diemChu], [XepLoai], [maSV]) VALUES (N'F770E111-D023-4C7E-BEA1-8CA06C57AD99', 0, 0, 0, N'', N'111111111_27')
GO
INSERT [dbo].[Lop] ([maLop], [tenLop], [IsDelete]) VALUES (N'44AE785A-4DDC-45B9-8959-180197EDB160', N'11DHTH03', 0)
INSERT [dbo].[Lop] ([maLop], [tenLop], [IsDelete]) VALUES (N'F578B1D3-A322-4BBD-B01B-2F0391D57813', N'11DHTH02', 0)
INSERT [dbo].[Lop] ([maLop], [tenLop], [IsDelete]) VALUES (N'FF5BA251-11C6-46AD-908B-8AEED4A4DAF1', N'11DHTH01', 0)
GO
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [Email], [ngaySinh], [diaChi], [cccd], [ttht], [ngayVaoTruong], [chuyenNganh], [matKhau], [maLop], [IsDelete]) VALUES (N'111111111_18', N'Nguyễn Văn 2', N'N?', N'null', CAST(N'2023-12-14T15:09:51.0270000' AS DateTime2), N'Nguyễn Trân A2', N'1110002', N'Đang học', CAST(N'2023-12-14' AS Date), N'Khoa học dữ liệu', N'123', N'F578B1D3-A322-4BBD-B01B-2F0391D57813', 0)
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [Email], [ngaySinh], [diaChi], [cccd], [ttht], [ngayVaoTruong], [chuyenNganh], [matKhau], [maLop], [IsDelete]) VALUES (N'111111111_19', N'Nguyễn Văn 3', N'Nam', N'null', CAST(N'2023-12-14T15:09:51.0280000' AS DateTime2), N'Nguyễn Trân A3', N'1110003', N'Đang học', CAST(N'2023-12-14' AS Date), N'Khoa học dữ liệu', N'123', N'F578B1D3-A322-4BBD-B01B-2F0391D57813', 0)
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [Email], [ngaySinh], [diaChi], [cccd], [ttht], [ngayVaoTruong], [chuyenNganh], [matKhau], [maLop], [IsDelete]) VALUES (N'111111111_20', N'Nguyễn Văn 4', N'Nam', N'null', CAST(N'2023-12-14T15:09:51.0290000' AS DateTime2), N'Nguyễn Trân A4', N'1110004', N'Đang học', CAST(N'2023-12-14' AS Date), N'Khoa học dữ liệu', N'123', N'F578B1D3-A322-4BBD-B01B-2F0391D57813', 0)
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [Email], [ngaySinh], [diaChi], [cccd], [ttht], [ngayVaoTruong], [chuyenNganh], [matKhau], [maLop], [IsDelete]) VALUES (N'111111111_21', N'Nguyễn Văn 5', N'Nam', N'null', CAST(N'2023-12-14T15:09:51.0300000' AS DateTime2), N'Nguyễn Trân A5', N'1110005', N'Đang học', CAST(N'2023-12-14' AS Date), N'Khoa học dữ liệu', N'123', N'F578B1D3-A322-4BBD-B01B-2F0391D57813', 0)
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [Email], [ngaySinh], [diaChi], [cccd], [ttht], [ngayVaoTruong], [chuyenNganh], [matKhau], [maLop], [IsDelete]) VALUES (N'111111111_22', N'Nguyễn Văn 6', N'N?', N'null', CAST(N'2023-12-14T15:09:51.0310000' AS DateTime2), N'Nguyễn Trân A6', N'1110006', N'Đang học', CAST(N'2023-12-14' AS Date), N'Khoa học dữ liệu', N'123', N'F578B1D3-A322-4BBD-B01B-2F0391D57813', 0)
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [Email], [ngaySinh], [diaChi], [cccd], [ttht], [ngayVaoTruong], [chuyenNganh], [matKhau], [maLop], [IsDelete]) VALUES (N'111111111_23', N'Nguyễn Văn 7', N'Nam', N'null', CAST(N'2023-12-14T15:09:51.0320000' AS DateTime2), N'Nguyễn Trân A7', N'1110007', N'Đang học', CAST(N'2023-12-14' AS Date), N'Khoa học dữ liệu', N'123', N'F578B1D3-A322-4BBD-B01B-2F0391D57813', 0)
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [Email], [ngaySinh], [diaChi], [cccd], [ttht], [ngayVaoTruong], [chuyenNganh], [matKhau], [maLop], [IsDelete]) VALUES (N'111111111_24', N'Nguyễn Văn 8', N'N?', N'null', CAST(N'2023-12-14T15:09:51.0330000' AS DateTime2), N'Nguyễn Trân A8', N'1110008', N'Đang học', CAST(N'2023-12-14' AS Date), N'Khoa học dữ liệu', N'123', N'F578B1D3-A322-4BBD-B01B-2F0391D57813', 0)
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [Email], [ngaySinh], [diaChi], [cccd], [ttht], [ngayVaoTruong], [chuyenNganh], [matKhau], [maLop], [IsDelete]) VALUES (N'111111111_25', N'Nguyễn Văn 9', N'Nam', N'null', CAST(N'2023-12-14T15:09:51.0340000' AS DateTime2), N'Nguyễn Trân A9', N'1110009', N'Đang học', CAST(N'2023-12-14' AS Date), N'Khoa học dữ liệu', N'123', N'F578B1D3-A322-4BBD-B01B-2F0391D57813', 0)
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [Email], [ngaySinh], [diaChi], [cccd], [ttht], [ngayVaoTruong], [chuyenNganh], [matKhau], [maLop], [IsDelete]) VALUES (N'111111111_27', N'Nguyễn Văn 2', N'N?', N'nguyenvan2@gmail.com', CAST(N'2023-12-14T15:09:51.0270000' AS DateTime2), N'Nguyễn Trân A2', N'1110002', N'Đang học', CAST(N'2023-12-14' AS Date), N'Khoa học dữ liệu', N'123', N'F578B1D3-A322-4BBD-B01B-2F0391D57813', 0)
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [Email], [ngaySinh], [diaChi], [cccd], [ttht], [ngayVaoTruong], [chuyenNganh], [matKhau], [maLop], [IsDelete]) VALUES (N'111111111_28', N'Nguyễn Văn 3', N'Nam', N'nguyenvan3@gmail.com', CAST(N'2023-12-14T15:09:51.0280000' AS DateTime2), N'Nguyễn Trân A3', N'1110003', N'Đang học', CAST(N'2023-12-14' AS Date), N'Khoa học dữ liệu', N'123', N'F578B1D3-A322-4BBD-B01B-2F0391D57813', 0)
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [Email], [ngaySinh], [diaChi], [cccd], [ttht], [ngayVaoTruong], [chuyenNganh], [matKhau], [maLop], [IsDelete]) VALUES (N'111111111_29', N'Nguyễn Văn 4', N'Nam', N'nguyenvan4@gmail.com', CAST(N'2023-12-14T15:09:51.0290000' AS DateTime2), N'Nguyễn Trân A4', N'1110004', N'Đang học', CAST(N'2023-12-14' AS Date), N'Khoa học dữ liệu', N'123', N'F578B1D3-A322-4BBD-B01B-2F0391D57813', 0)
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [Email], [ngaySinh], [diaChi], [cccd], [ttht], [ngayVaoTruong], [chuyenNganh], [matKhau], [maLop], [IsDelete]) VALUES (N'111111111_30', N'Nguyễn Văn 5', N'Nam', N'nguyenvan5@gmail.com', CAST(N'2023-12-14T15:09:51.0300000' AS DateTime2), N'Nguyễn Trân A5', N'1110005', N'Đang học', CAST(N'2023-12-14' AS Date), N'Khoa học dữ liệu', N'123', N'F578B1D3-A322-4BBD-B01B-2F0391D57813', 0)
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [Email], [ngaySinh], [diaChi], [cccd], [ttht], [ngayVaoTruong], [chuyenNganh], [matKhau], [maLop], [IsDelete]) VALUES (N'111111111_31', N'Nguyễn Văn 6', N'N?', N'nguyenvan6@gmail.com', CAST(N'2023-12-14T15:09:51.0310000' AS DateTime2), N'Nguyễn Trân A6', N'1110006', N'Đang học', CAST(N'2023-12-14' AS Date), N'Khoa học dữ liệu', N'123', N'F578B1D3-A322-4BBD-B01B-2F0391D57813', 0)
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [Email], [ngaySinh], [diaChi], [cccd], [ttht], [ngayVaoTruong], [chuyenNganh], [matKhau], [maLop], [IsDelete]) VALUES (N'111111111_32', N'Nguyễn Văn 7', N'Nam', N'nguyenvan7@gmail.com', CAST(N'2023-12-14T15:09:51.0320000' AS DateTime2), N'Nguyễn Trân A7', N'1110007', N'Đang học', CAST(N'2023-12-14' AS Date), N'Khoa học dữ liệu', N'123', N'F578B1D3-A322-4BBD-B01B-2F0391D57813', 0)
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [Email], [ngaySinh], [diaChi], [cccd], [ttht], [ngayVaoTruong], [chuyenNganh], [matKhau], [maLop], [IsDelete]) VALUES (N'111111111_33', N'Nguyễn Văn 8', N'N?', N'nguyenvan8@gmail.com', CAST(N'2023-12-14T15:09:51.0330000' AS DateTime2), N'Nguyễn Trân A8', N'1110008', N'Đang học', CAST(N'2023-12-14' AS Date), N'Khoa học dữ liệu', N'123', N'F578B1D3-A322-4BBD-B01B-2F0391D57813', 0)
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [Email], [ngaySinh], [diaChi], [cccd], [ttht], [ngayVaoTruong], [chuyenNganh], [matKhau], [maLop], [IsDelete]) VALUES (N'111111111_34', N'Nguyễn Văn 9', N'Nam', N'hongthanhmi98@gmail.com', CAST(N'2023-12-14T15:09:51.0340000' AS DateTime2), N'Nguyễn Trân A9', N'1110009', N'Đang học', CAST(N'2023-12-14' AS Date), N'Khoa học dữ liệu', N'456', N'F578B1D3-A322-4BBD-B01B-2F0391D57813', 0)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ChiTietCuocHop_maCH]    Script Date: 12/18/2023 11:54:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietCuocHop_maCH] ON [dbo].[ChiTietCuocHop]
(
	[maCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ChiTietCuocHop_maSv]    Script Date: 12/18/2023 11:54:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietCuocHop_maSv] ON [dbo].[ChiTietCuocHop]
(
	[maSv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ChiTietKhenThuong_maSV]    Script Date: 12/18/2023 11:54:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietKhenThuong_maSV] ON [dbo].[ChiTietKhenThuong]
(
	[maSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ChiTietThongBao_maSv]    Script Date: 12/18/2023 11:54:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietThongBao_maSv] ON [dbo].[ChiTietThongBao]
(
	[maSv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ChiTietThongBao_maTB]    Script Date: 12/18/2023 11:54:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietThongBao_maTB] ON [dbo].[ChiTietThongBao]
(
	[maTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CoVanHocTap_maLop]    Script Date: 12/18/2023 11:54:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_CoVanHocTap_maLop] ON [dbo].[CoVanHocTap]
(
	[maLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CuocHop_maCVHT]    Script Date: 12/18/2023 11:54:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_CuocHop_maCVHT] ON [dbo].[CuocHop]
(
	[maCVHT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DiemCTXH_maSV]    Script Date: 12/18/2023 11:54:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_DiemCTXH_maSV] ON [dbo].[DiemCTXH]
(
	[maSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DiemRL_maSV]    Script Date: 12/18/2023 11:54:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_DiemRL_maSV] ON [dbo].[DiemRL]
(
	[maSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DiemTongKet_maSV]    Script Date: 12/18/2023 11:54:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_DiemTongKet_maSV] ON [dbo].[DiemTongKet]
(
	[maSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SinhVien_maLop]    Script Date: 12/18/2023 11:54:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_SinhVien_maLop] ON [dbo].[SinhVien]
(
	[maLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ThongBao_maCVHT]    Script Date: 12/18/2023 11:54:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_ThongBao_maCVHT] ON [dbo].[ThongBao]
(
	[maCVHT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietCuocHop] ADD  DEFAULT (newid()) FOR [maCTCH]
GO
ALTER TABLE [dbo].[ChiTietKhenThuong] ADD  DEFAULT (newid()) FOR [maCTKT]
GO
ALTER TABLE [dbo].[ChiTietThongBao] ADD  DEFAULT (newid()) FOR [maCTTB]
GO
ALTER TABLE [dbo].[CoVanHocTap] ADD  DEFAULT (newid()) FOR [maCVHT]
GO
ALTER TABLE [dbo].[CuocHop] ADD  DEFAULT (newid()) FOR [maCH]
GO
ALTER TABLE [dbo].[DiemCTXH] ADD  DEFAULT (newid()) FOR [maDiemCTXH]
GO
ALTER TABLE [dbo].[DiemRL] ADD  DEFAULT (newid()) FOR [maDiemRL]
GO
ALTER TABLE [dbo].[DiemTongKet] ADD  DEFAULT (newid()) FOR [maDiemTongKet]
GO
ALTER TABLE [dbo].[Lop] ADD  DEFAULT (newid()) FOR [maLop]
GO
ALTER TABLE [dbo].[SinhVien] ADD  DEFAULT (newid()) FOR [maSV]
GO
ALTER TABLE [dbo].[ThongBao] ADD  DEFAULT (newid()) FOR [maTB]
GO
ALTER TABLE [dbo].[ChiTietCuocHop]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietCuo__maCH__5FB337D6] FOREIGN KEY([maCH])
REFERENCES [dbo].[CuocHop] ([maCH])
GO
ALTER TABLE [dbo].[ChiTietCuocHop] CHECK CONSTRAINT [FK__ChiTietCuo__maCH__5FB337D6]
GO
ALTER TABLE [dbo].[ChiTietCuocHop]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietCuo__maSv__5EBF139D] FOREIGN KEY([maSv])
REFERENCES [dbo].[SinhVien] ([maSV])
GO
ALTER TABLE [dbo].[ChiTietCuocHop] CHECK CONSTRAINT [FK__ChiTietCuo__maSv__5EBF139D]
GO
ALTER TABLE [dbo].[ChiTietKhenThuong]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietKhe__maSV__4E88ABD4] FOREIGN KEY([maSV])
REFERENCES [dbo].[SinhVien] ([maSV])
GO
ALTER TABLE [dbo].[ChiTietKhenThuong] CHECK CONSTRAINT [FK__ChiTietKhe__maSV__4E88ABD4]
GO
ALTER TABLE [dbo].[ChiTietThongBao]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietTho__maSv__59FA5E80] FOREIGN KEY([maSv])
REFERENCES [dbo].[SinhVien] ([maSV])
GO
ALTER TABLE [dbo].[ChiTietThongBao] CHECK CONSTRAINT [FK__ChiTietTho__maSv__59FA5E80]
GO
ALTER TABLE [dbo].[ChiTietThongBao]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietTho__maTB__5AEE82B9] FOREIGN KEY([maTB])
REFERENCES [dbo].[ThongBao] ([maTB])
GO
ALTER TABLE [dbo].[ChiTietThongBao] CHECK CONSTRAINT [FK__ChiTietTho__maTB__5AEE82B9]
GO
ALTER TABLE [dbo].[CoVanHocTap]  WITH CHECK ADD  CONSTRAINT [FK__CoVanHocT__maLop__3F466844] FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
GO
ALTER TABLE [dbo].[CoVanHocTap] CHECK CONSTRAINT [FK__CoVanHocT__maLop__3F466844]
GO
ALTER TABLE [dbo].[CuocHop]  WITH CHECK ADD  CONSTRAINT [FK__CuocHop__maCVHT__52593CB8] FOREIGN KEY([maCVHT])
REFERENCES [dbo].[CoVanHocTap] ([maCVHT])
GO
ALTER TABLE [dbo].[CuocHop] CHECK CONSTRAINT [FK__CuocHop__maCVHT__52593CB8]
GO
ALTER TABLE [dbo].[DiemCTXH]  WITH CHECK ADD  CONSTRAINT [FK__DiemCTXH__maSV__4316F928] FOREIGN KEY([maSV])
REFERENCES [dbo].[SinhVien] ([maSV])
GO
ALTER TABLE [dbo].[DiemCTXH] CHECK CONSTRAINT [FK__DiemCTXH__maSV__4316F928]
GO
ALTER TABLE [dbo].[DiemRL]  WITH CHECK ADD  CONSTRAINT [FK__DiemRL__maSV__46E78A0C] FOREIGN KEY([maSV])
REFERENCES [dbo].[SinhVien] ([maSV])
GO
ALTER TABLE [dbo].[DiemRL] CHECK CONSTRAINT [FK__DiemRL__maSV__46E78A0C]
GO
ALTER TABLE [dbo].[DiemTongKet]  WITH CHECK ADD  CONSTRAINT [FK__DiemTongKe__maSV__4AB81AF0] FOREIGN KEY([maSV])
REFERENCES [dbo].[SinhVien] ([maSV])
GO
ALTER TABLE [dbo].[DiemTongKet] CHECK CONSTRAINT [FK__DiemTongKe__maSV__4AB81AF0]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK__SinhVien__maLop__3B75D760] FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK__SinhVien__maLop__3B75D760]
GO
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD  CONSTRAINT [FK__ThongBao__maCVHT__5629CD9C] FOREIGN KEY([maCVHT])
REFERENCES [dbo].[CoVanHocTap] ([maCVHT])
GO
ALTER TABLE [dbo].[ThongBao] CHECK CONSTRAINT [FK__ThongBao__maCVHT__5629CD9C]
GO
USE [master]
GO
ALTER DATABASE [QuanLyCoVanHocTap] SET  READ_WRITE 
GO
