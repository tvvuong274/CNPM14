USE [master]
GO
/****** Object:  Database [QLBH]    Script Date: 12/21/2018 01:31:55 PM ******/
CREATE DATABASE [QLBH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBH', FILENAME = N'D:\Phần mềm học tập\New folder\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLBH.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLBH_log', FILENAME = N'D:\Phần mềm học tập\New folder\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLBH_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLBH] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBH] SET  MULTI_USER 
GO
ALTER DATABASE [QLBH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBH] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLBH] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLBH]
GO
/****** Object:  Table [dbo].[tb_CTHD]    Script Date: 12/21/2018 01:31:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_CTHD](
	[MaHD] [nchar](10) NOT NULL,
	[MaHang] [nchar](10) NOT NULL,
	[SoLuong] [nchar](10) NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_tb_CTHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_HangHoa]    Script Date: 12/21/2018 01:31:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_HangHoa](
	[MaHang] [nchar](10) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[DonGia] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_HangHoa] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_HoaDon]    Script Date: 12/21/2018 01:31:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_HoaDon](
	[MaHD] [nchar](10) NOT NULL,
	[MaNV] [nchar](10) NULL,
	[MaKH] [nchar](10) NULL,
	[NgayLap] [nchar](10) NULL,
 CONSTRAINT [PK_tb_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_KhachHang]    Script Date: 12/21/2018 01:31:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_KhachHang](
	[MaKH] [nchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [text] NULL,
	[SoDienThoai] [nchar](11) NULL,
 CONSTRAINT [PK_tb_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_login]    Script Date: 12/21/2018 01:31:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_login](
	[TaiKhoan] [nchar](30) NOT NULL,
	[MatKhau] [nchar](30) NULL,
 CONSTRAINT [PK_tb_login] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_NhanVien]    Script Date: 12/21/2018 01:31:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_NhanVien](
	[MaNV] [nchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[NamSinh] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia]) VALUES (N'HH01      ', N'Laptop DELL 7557', N'18000000')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia]) VALUES (N'HH02      ', N'Laptop Acer', N'18399000')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia]) VALUES (N'HH03      ', N'Dugati', N'300000000')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia]) VALUES (N'HH04      ', N'Túi thần kỳ', N'10000000')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia]) VALUES (N'HH05      ', N'Khóa học AI', N'3000000')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia]) VALUES (N'HH06      ', N'BMW', N'500000000')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia]) VALUES (N'HH07      ', N'Vé xem phim', N'45000')
INSERT [dbo].[tb_HoaDon] ([MaHD], [MaNV], [MaKH], [NgayLap]) VALUES (N'HD01      ', N'NV1       ', N'KH01      ', N'20/11/2017')
INSERT [dbo].[tb_HoaDon] ([MaHD], [MaNV], [MaKH], [NgayLap]) VALUES (N'HD02      ', N'NV1       ', N'KH01      ', N'20/11/2018')
INSERT [dbo].[tb_HoaDon] ([MaHD], [MaNV], [MaKH], [NgayLap]) VALUES (N'HD03      ', N'NV1       ', N'KH02      ', N'20/11/2018')
INSERT [dbo].[tb_HoaDon] ([MaHD], [MaNV], [MaKH], [NgayLap]) VALUES (N'HD04      ', N'NV7       ', N'KH02      ', N'20/11/2018')
INSERT [dbo].[tb_HoaDon] ([MaHD], [MaNV], [MaKH], [NgayLap]) VALUES (N'HD05      ', N'NV1       ', N'KH01      ', N'12/17/2018')
INSERT [dbo].[tb_HoaDon] ([MaHD], [MaNV], [MaKH], [NgayLap]) VALUES (N'HD06      ', N'NV3       ', N'KH06      ', N'02/14/2018')
INSERT [dbo].[tb_HoaDon] ([MaHD], [MaNV], [MaKH], [NgayLap]) VALUES (N'HD07      ', N'NV4       ', N'KH05      ', N'01/01/2015')
INSERT [dbo].[tb_KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai]) VALUES (N'KH01      ', N'ádasd', N'HCM', N'0213354    ')
INSERT [dbo].[tb_KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai]) VALUES (N'KH011     ', N'ABCâ', N'Q2', N'0333333    ')
INSERT [dbo].[tb_KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai]) VALUES (N'KH02      ', N'ABC', N'Q2', N'0333333    ')
INSERT [dbo].[tb_KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai]) VALUES (N'KH03      ', N'ABC', N'Q4', N'0333333    ')
INSERT [dbo].[tb_KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai]) VALUES (N'KH04      ', N'Truc', N'Q9', N'0399222222 ')
INSERT [dbo].[tb_KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai]) VALUES (N'KH05      ', N'Truc Anh Ðài', N'Q1', N'0399333    ')
INSERT [dbo].[tb_KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai]) VALUES (N'KH06      ', N'Thầy Nhựt', N'Q9', N'0399333999 ')
INSERT [dbo].[tb_KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai]) VALUES (N'KH07      ', N'An Dương Vương', N'Tân Bình', N' 0399202222')
INSERT [dbo].[tb_KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai]) VALUES (N'KH8       ', N'Nhân', N'Q Bình', N'0919999999 ')
INSERT [dbo].[tb_login] ([TaiKhoan], [MatKhau]) VALUES (N'admin                         ', N'admin                         ')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'0001      ', N'Vượng', N'1998-12-12', N'038999999')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'01        ', N'Anh', N'1998-02-02', N'')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'a1        ', N'a2', N'1998-01-01', N'0914067029')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'a2        ', N'a3', N'1998-01-01', N'039992049')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'admin     ', N'admin', N'1998-02-02', N'0111111')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'adwqe     ', N'ác', N'1998-03-03', N'03546546')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'ea        ', N'eaa', N'2001-01-01', N'0998888')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'NV009     ', N'Hòa', N'1998-12-12', N'165798')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'NV1       ', N'Trần Văn Vương', N'1998-01-01', N'0399204233 ')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'NV1 asd   ', N'Tr?n Van Vuong', N'1998-01-01', N'0399204233 ')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'NV10      ', N'NVA', N'1998-03-03', N'0324688645')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'NV11      ', N'AAA', N'1998-12-12', N'0989999999')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'NV2       ', N'Nhân', N'1998-01-01', N'01111111   ')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'NV3       ', N'Tuấn', N'1998-03-03', N'0321123111 ')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'NV4       ', N'Tân', N'1998-01-01', N'0399204233 ')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'NV5       ', N'Phan Tấn Quốc', N'1998-01-01', N'0399204233 ')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'NV6       ', N'Phan Quốc Tấn', N'1998-03-03', N'0399204233 ')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'NV7       ', N'Tuê Tuê', N'1998-01-01', N'0399204233 ')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'NV8       ', N'Nhân Viên A', N'1998-01-01', N'0335464688')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'NV9       ', N'NVB', N'1998-01-08', N'0366555655')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'NV99      ', N'Trúc', N'1998-11-20', N'032464655+')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'Test      ', N'Nhânnnn', N'1998-12-12', N'13546579879')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [NamSinh], [SDT]) VALUES (N'Test2     ', N'Nhân 3', N'1998-12-20', N'0324654879')
ALTER TABLE [dbo].[tb_CTHD]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTHD_tb_HangHoa1] FOREIGN KEY([MaHang])
REFERENCES [dbo].[tb_HangHoa] ([MaHang])
GO
ALTER TABLE [dbo].[tb_CTHD] CHECK CONSTRAINT [FK_tb_CTHD_tb_HangHoa1]
GO
ALTER TABLE [dbo].[tb_CTHD]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTHD_tb_HoaDon1] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tb_HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[tb_CTHD] CHECK CONSTRAINT [FK_tb_CTHD_tb_HoaDon1]
GO
ALTER TABLE [dbo].[tb_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tb_HoaDon_tb_KhachHang1] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tb_KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[tb_HoaDon] CHECK CONSTRAINT [FK_tb_HoaDon_tb_KhachHang1]
GO
ALTER TABLE [dbo].[tb_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tb_HoaDon_tb_NhanVien1] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tb_NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tb_HoaDon] CHECK CONSTRAINT [FK_tb_HoaDon_tb_NhanVien1]
GO
USE [master]
GO
ALTER DATABASE [QLBH] SET  READ_WRITE 
GO
