USE [VANDUNGSINH2]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BINHLUAN](
	[ID_BL] [int] IDENTITY(1,1) NOT NULL,
	[ID_SP] [int] NOT NULL,
	[ID_TK] [int] NOT NULL,
	[ngaybinhluan] [date] NOT NULL,
	[noidung] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_BINHLUAN] PRIMARY KEY CLUSTERED 
(
	[ID_BL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDONHANG](
	[ID_CTDH] [int] IDENTITY(1,1) NOT NULL,
	[ID_DH] [int] NOT NULL,
	[ID_SP] [int] NOT NULL,
	[soluong] [int] NOT NULL,
	[dongia] [int] NOT NULL,
 CONSTRAINT [PK_CTDONHANG] PRIMARY KEY CLUSTERED 
(
	[ID_CTDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[ID_DM] [int] IDENTITY(1,1) NOT NULL,
	[tendanhmuc] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_DANHMUC] PRIMARY KEY CLUSTERED 
(
	[ID_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONHANG](
	[ID_DH] [int] IDENTITY(1,1) NOT NULL,
	[ID_TK] [int] NULL,
	[ID_TIN] [int] NULL,
	[ngaylap] [date] NOT NULL,
	[ngaynhanhang] [date] NOT NULL,
	[diachigiaohang] [nvarchar](200) NULL,
	[phone] [char](16) NULL,
	[trangthai] [bit] NULL,
	[hotenkh] [nvarchar](250) NULL,
 CONSTRAINT [PK_DONHANG] PRIMARY KEY CLUSTERED 
(
	[ID_DH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOANGGIA](
	[IDKG] [int] IDENTITY(1,1) NOT NULL,
	[cantren] [int] NOT NULL,
	[canduoi] [int] NOT NULL,
 CONSTRAINT [PK_KHOANGGIA] PRIMARY KEY CLUSTERED 
(
	[IDKG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHOMTIN](
	[ID_NHOM] [int] IDENTITY(1,1) NOT NULL,
	[tennhomtin] [nvarchar](250) NULL,
 CONSTRAINT [PK_NHOMTIN] PRIMARY KEY CLUSTERED 
(
	[ID_NHOM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHANQUYEN](
	[TENQUYEN] [varchar](50) NOT NULL,
	[ID_TK] [int] NOT NULL,
 CONSTRAINT [PK_PHANQUYEN] PRIMARY KEY CLUSTERED 
(
	[TENQUYEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QUYEN](
	[ID_QUYEN] [int] IDENTITY(1,1) NOT NULL,
	[TENQUYEN] [varchar](50) NOT NULL,
 CONSTRAINT [PK_QUYEN] PRIMARY KEY CLUSTERED 
(
	[ID_QUYEN] ASC,
	[TENQUYEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[ID_SP] [int] IDENTITY(1,1) NOT NULL,
	[ID_DM] [int] NOT NULL,
	[tensanpham] [nvarchar](max) NOT NULL,
	[giabd] [int] NOT NULL,
	[trongluong] [varchar](250) NOT NULL,
	[mausac] [nvarchar](30) NOT NULL,
	[ImgLink] [nvarchar](250) NOT NULL,
	[memory] [varchar](250) NOT NULL,
	[hedieuhanh] [varchar](250) NOT NULL,
	[vga] [nvarchar](100) NOT NULL,
	[cpuz] [varchar](250) NOT NULL,
	[battery] [varchar](250) NOT NULL,
	[phukiendikem] [nvarchar](100) NULL,
	[chedobaohanh] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[ID_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPGIAMGIA](
	[ID_KM] [int] IDENTITY(1,1) NOT NULL,
	[ID_SP] [int] NOT NULL,
	[soluong] [int] NOT NULL,
	[giaht] [int] NOT NULL,
	[ngayban] [date] NOT NULL,
 CONSTRAINT [PK_SPGIAMGIA] PRIMARY KEY CLUSTERED 
(
	[ID_KM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[ID_TK] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[tentk] [nvarchar](50) NOT NULL,
	[phone] [char](16) NOT NULL,
	[mail] [varchar](50) NOT NULL,
	[diachi] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[ID_TK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINTUC](
	[ID_TIN] [int] IDENTITY(1,1) NOT NULL,
	[ID_NHOM] [int] NULL,
	[tentin] [nvarchar](250) NOT NULL,
	[ImgTin] [nvarchar](250) NOT NULL,
	[mota] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TINTUC] PRIMARY KEY CLUSTERED 
(
	[ID_TIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BINHLUAN] ON 

INSERT [dbo].[BINHLUAN] ([ID_BL], [ID_SP], [ID_TK], [ngaybinhluan], [noidung]) VALUES (23, 70, 3, CAST(0xFE3A0B00 AS Date), N'TEST Nội dung BL')
INSERT [dbo].[BINHLUAN] ([ID_BL], [ID_SP], [ID_TK], [ngaybinhluan], [noidung]) VALUES (24, 1, 3, CAST(0x553B0B00 AS Date), N'TESTTESTTESTTESTTESTTEST')
INSERT [dbo].[BINHLUAN] ([ID_BL], [ID_SP], [ID_TK], [ngaybinhluan], [noidung]) VALUES (30, 3, 2, CAST(0x573B0B00 AS Date), N'TESTTESTTESTTESTTESTTEST')
INSERT [dbo].[BINHLUAN] ([ID_BL], [ID_SP], [ID_TK], [ngaybinhluan], [noidung]) VALUES (41, 3, 3, CAST(0x573B0B00 AS Date), N'TESTTESTTESTTESTTESTTEST')
INSERT [dbo].[BINHLUAN] ([ID_BL], [ID_SP], [ID_TK], [ngaybinhluan], [noidung]) VALUES (42, 70, 2, CAST(0x653B0B00 AS Date), N'test bình luận =)))')
INSERT [dbo].[BINHLUAN] ([ID_BL], [ID_SP], [ID_TK], [ngaybinhluan], [noidung]) VALUES (1042, 1, 4, CAST(0x663B0B00 AS Date), N'Cấu hình khỏe thích hợp cho game thủ. Vote')
INSERT [dbo].[BINHLUAN] ([ID_BL], [ID_SP], [ID_TK], [ngaybinhluan], [noidung]) VALUES (1043, 18, 4, CAST(0x663B0B00 AS Date), N'Test thử chức năng bình luận')
INSERT [dbo].[BINHLUAN] ([ID_BL], [ID_SP], [ID_TK], [ngaybinhluan], [noidung]) VALUES (1044, 111, 4, CAST(0x663B0B00 AS Date), N'Sản phẩm mới cấu hình cao nhưng giá thì hơi cháttttt')
INSERT [dbo].[BINHLUAN] ([ID_BL], [ID_SP], [ID_TK], [ngaybinhluan], [noidung]) VALUES (1045, 19, 6, CAST(0x673B0B00 AS Date), N'show date ><')
INSERT [dbo].[BINHLUAN] ([ID_BL], [ID_SP], [ID_TK], [ngaybinhluan], [noidung]) VALUES (1046, 16, 10, CAST(0x713B0B00 AS Date), N'Cái này không có còm men =))')
INSERT [dbo].[BINHLUAN] ([ID_BL], [ID_SP], [ID_TK], [ngaybinhluan], [noidung]) VALUES (1047, 16, 10, CAST(0x713B0B00 AS Date), N'đã có còm men')
INSERT [dbo].[BINHLUAN] ([ID_BL], [ID_SP], [ID_TK], [ngaybinhluan], [noidung]) VALUES (1048, 16, 10, CAST(0x713B0B00 AS Date), N'thử còm men lại xem được không?')
INSERT [dbo].[BINHLUAN] ([ID_BL], [ID_SP], [ID_TK], [ngaybinhluan], [noidung]) VALUES (1049, 27, 3, CAST(0x713B0B00 AS Date), N'Comment')
INSERT [dbo].[BINHLUAN] ([ID_BL], [ID_SP], [ID_TK], [ngaybinhluan], [noidung]) VALUES (1050, 70, 6, CAST(0x843B0B00 AS Date), N'hahahahahahahahaha')
SET IDENTITY_INSERT [dbo].[BINHLUAN] OFF
SET IDENTITY_INSERT [dbo].[CTDONHANG] ON 

INSERT [dbo].[CTDONHANG] ([ID_CTDH], [ID_DH], [ID_SP], [soluong], [dongia]) VALUES (2106, 2088, 21, 1, 47000000)
INSERT [dbo].[CTDONHANG] ([ID_CTDH], [ID_DH], [ID_SP], [soluong], [dongia]) VALUES (2112, 2092, 1, 1, 40000000)
INSERT [dbo].[CTDONHANG] ([ID_CTDH], [ID_DH], [ID_SP], [soluong], [dongia]) VALUES (2113, 2092, 3, 1, 47000000)
INSERT [dbo].[CTDONHANG] ([ID_CTDH], [ID_DH], [ID_SP], [soluong], [dongia]) VALUES (2114, 2093, 1, 2, 80000000)
SET IDENTITY_INSERT [dbo].[CTDONHANG] OFF
SET IDENTITY_INSERT [dbo].[DANHMUC] ON 

INSERT [dbo].[DANHMUC] ([ID_DM], [tendanhmuc]) VALUES (1, N'Alienware')
INSERT [dbo].[DANHMUC] ([ID_DM], [tendanhmuc]) VALUES (2, N'MSI Gaming')
INSERT [dbo].[DANHMUC] ([ID_DM], [tendanhmuc]) VALUES (3, N'MSI Workstation')
INSERT [dbo].[DANHMUC] ([ID_DM], [tendanhmuc]) VALUES (4, N'ASUS')
INSERT [dbo].[DANHMUC] ([ID_DM], [tendanhmuc]) VALUES (5, N'DELL')
INSERT [dbo].[DANHMUC] ([ID_DM], [tendanhmuc]) VALUES (6, N'HP')
INSERT [dbo].[DANHMUC] ([ID_DM], [tendanhmuc]) VALUES (7, N'SONY')
INSERT [dbo].[DANHMUC] ([ID_DM], [tendanhmuc]) VALUES (8, N'TOSHIBA')
INSERT [dbo].[DANHMUC] ([ID_DM], [tendanhmuc]) VALUES (9, N'LENOVO')
INSERT [dbo].[DANHMUC] ([ID_DM], [tendanhmuc]) VALUES (10, N'ACER')
INSERT [dbo].[DANHMUC] ([ID_DM], [tendanhmuc]) VALUES (11, N'APPLE')
SET IDENTITY_INSERT [dbo].[DANHMUC] OFF
SET IDENTITY_INSERT [dbo].[DONHANG] ON 

INSERT [dbo].[DONHANG] ([ID_DH], [ID_TK], [ID_TIN], [ngaylap], [ngaynhanhang], [diachigiaohang], [phone], [trangthai], [hotenkh]) VALUES (2088, NULL, NULL, CAST(0x853B0B00 AS Date), CAST(0x853B0B00 AS Date), N'250 Trần Cung, Cổ Nhuế, Hà Nội', N'q43543545       ', NULL, N'Nguyễn Văn Nam')
INSERT [dbo].[DONHANG] ([ID_DH], [ID_TK], [ID_TIN], [ngaylap], [ngaynhanhang], [diachigiaohang], [phone], [trangthai], [hotenkh]) VALUES (2092, NULL, NULL, CAST(0x853B0B00 AS Date), CAST(0x853B0B00 AS Date), N'Số 6, Ngõ 56 Phố Pháo Đài Láng, Đống Đa, Hà Nội', N'0943103168      ', 1, N'Trần Văn Quyết')
INSERT [dbo].[DONHANG] ([ID_DH], [ID_TK], [ID_TIN], [ngaylap], [ngaynhanhang], [diachigiaohang], [phone], [trangthai], [hotenkh]) VALUES (2093, NULL, NULL, CAST(0x853B0B00 AS Date), CAST(0x903B0B00 AS Date), N'Số 6, Ngõ 56 Phố Pháo Đài Láng, Đống Đa, Hà Nội', N'0943103168      ', NULL, N'Trần Văn Quyết')
SET IDENTITY_INSERT [dbo].[DONHANG] OFF
SET IDENTITY_INSERT [dbo].[KHOANGGIA] ON 

INSERT [dbo].[KHOANGGIA] ([IDKG], [cantren], [canduoi]) VALUES (1, 10000000, 5000000)
INSERT [dbo].[KHOANGGIA] ([IDKG], [cantren], [canduoi]) VALUES (2, 15000000, 10000000)
INSERT [dbo].[KHOANGGIA] ([IDKG], [cantren], [canduoi]) VALUES (3, 20000000, 15000000)
INSERT [dbo].[KHOANGGIA] ([IDKG], [cantren], [canduoi]) VALUES (4, 25000000, 20000000)
INSERT [dbo].[KHOANGGIA] ([IDKG], [cantren], [canduoi]) VALUES (5, 30000000, 25000000)
INSERT [dbo].[KHOANGGIA] ([IDKG], [cantren], [canduoi]) VALUES (6, 40000000, 30000000)
INSERT [dbo].[KHOANGGIA] ([IDKG], [cantren], [canduoi]) VALUES (7, 50000000, 40000000)
INSERT [dbo].[KHOANGGIA] ([IDKG], [cantren], [canduoi]) VALUES (8, 70000000, 50000000)
INSERT [dbo].[KHOANGGIA] ([IDKG], [cantren], [canduoi]) VALUES (9, 1000000000, 70000000)
SET IDENTITY_INSERT [dbo].[KHOANGGIA] OFF
SET IDENTITY_INSERT [dbo].[NHOMTIN] ON 

INSERT [dbo].[NHOMTIN] ([ID_NHOM], [tennhomtin]) VALUES (1, N'TIN KHUYẾN MẠI')
INSERT [dbo].[NHOMTIN] ([ID_NHOM], [tennhomtin]) VALUES (2, N'TIN CÔNG NGHỆ')
INSERT [dbo].[NHOMTIN] ([ID_NHOM], [tennhomtin]) VALUES (3, N'HƯỚNG DẪN KHÁCH HÀNG')
INSERT [dbo].[NHOMTIN] ([ID_NHOM], [tennhomtin]) VALUES (4, N'TƯ VẤN')
INSERT [dbo].[NHOMTIN] ([ID_NHOM], [tennhomtin]) VALUES (5, N'LAPTOP GAMING')
INSERT [dbo].[NHOMTIN] ([ID_NHOM], [tennhomtin]) VALUES (6, N'BẢO HÀNH')
INSERT [dbo].[NHOMTIN] ([ID_NHOM], [tennhomtin]) VALUES (7, N'TIN CÔNG TY')
INSERT [dbo].[NHOMTIN] ([ID_NHOM], [tennhomtin]) VALUES (8, N'DỊCH VỤ')
INSERT [dbo].[NHOMTIN] ([ID_NHOM], [tennhomtin]) VALUES (9, N'TIN TUYỂN DỤNG')
SET IDENTITY_INSERT [dbo].[NHOMTIN] OFF
INSERT [dbo].[PHANQUYEN] ([TENQUYEN], [ID_TK]) VALUES (N'Admin', 2)
INSERT [dbo].[PHANQUYEN] ([TENQUYEN], [ID_TK]) VALUES (N'NguoiDung', 3)
SET IDENTITY_INSERT [dbo].[QUYEN] ON 

INSERT [dbo].[QUYEN] ([ID_QUYEN], [TENQUYEN]) VALUES (4, N'Admin')
INSERT [dbo].[QUYEN] ([ID_QUYEN], [TENQUYEN]) VALUES (5, N'NguoiDung')
SET IDENTITY_INSERT [dbo].[QUYEN] OFF
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (1, 1, N'Alienware 17 Gaming CPU Skylake', 40000000, N'3.78', N'Đen Bạc', N'ali1.JPG', N'8GB DDR4 2133Mhz (4G * 2) ', N'Windows 10 Pro 64 Bit', N'NVIDIA® GeForce GTX970M 3GB GDDR5 ', N'Skylake i7-6700HQ (6MB Cache, up to 3.5GHz w/ Turbo Boost) ', N'	
8 Cell lithium (92Wh)', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (3, 1, N'Alienware 15A2 Gaming CPU Skylake', 47000000, N'3.2', N'Đen', N'ali2.JPG', N'8GB DDR4 2133Mhz (4G *2) ', N'Window 10 Pro 64 Bit', N'NVIDIA® GeForce GTX980M 4GB GDDR5 ', N'Skylake i7-6700HQ (6MB Cache, up to 3.5GHz w/ Turbo Boost) ', N'	
8 Cell lithium (92Wh)', N'AC Adapter, CD', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (8, 1, N'Alienware 15CB Gaming CPU Skylake', 36000000, N'3.5', N'Đen', N'ali3.jpg', N'8GB DDR4 2133Mhz (4G * 2) ', N'Windows 10 Pro 64 Bit', N'NVIDIA® GeForce GTX965M 2GB GDDR5', N'Skylake i7-6700HQ (6MB Cache, up to 3.5GHz w/ Turbo Boost)', N'8 Cell lithium (92Wh)', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (10, 2, N'MSI GAMING GS60 2PL Skylake Pro', 29000000, N'1.9', N'Đen', N'msi1.jpg', N'8GB DDR3', N'Windows 10', N'nVidia Geforce GTX850M 2GB GDDR5 ', N'Intel Sharkbay Core i7-4720HQ ', N'6 Cell', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (12, 2, N'MSI GAMING GE72 6QD STPro HDD 500', 31000000, N'2.7', N'Đen', N'msi2.jpg', N'8GB DDR4', N'Windows 10', N'NVIDIA® GeForce GTX960M 2GB GDDR5', N'Skylake i7-6700HQ', N'6 Cell', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (16, 2, N'MSI GAMING GE62 6QD STPro HDD 1TB', 33000000, N'2.6', N'Đen Xám', N'msi3.jpg', N'8GB DDR4', N'Windows 10', N'NVIDIA® GeForce GTX960M 2GB GDDR5', N'Skylake i7-6700HQ', N'6 Cell', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (17, 2, N'MSI GAMING GE62-1 6QD STPro', 32500000, N'2.7', N'Đen', N'msi4.jpg', N'
8GB DDR4', N'Windows 10', N'NVIDIA® GeForce GTX960M 2GB GDDR5', N'	
Skylake i7-6700HQ', N'6 Cell', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (18, 2, N'MSI GAMING GS70 Stealth Pro HDD 680', 47300000, N'1.9', N'Đen', N'msi5.jpg', N'16GB DDR3', N'Windows 10', N'nVidia Geforce GTX870M 3GB GDDR5 ', N'Intel Sharkbay Core i7-4720HQ ', N'8 Cell', N'CD Sạc, Cáp', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (19, 2, N'MSI GAMING GE72 6QD Apache Pro', 31500000, N'2.7', N'Đen', N'msi6.jpg', N'8GB DDR4', N'Windows 10', N'NVIDIA® GeForce GTX960M 2GB GDDR5', N'Skylake i7-6700HQ', N'6 Cell', N'
AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (20, 3, N'MSI WORKSTATION WT72 2OMTA', 80000000, N'3.2', N'Đen', N'wor1.jpg', N'32G (8GB *4) DDRIII', N'Windows 10', N'	
Quadro K2200M , 2GB GDDR5', N'Shark Bay i7-4720HQ', N'9 Cell', N'	
Sách hướng dẫn + AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (21, 3, N'MSI WORKSTATION WT72 2OM-2', 47000000, N'2.8', N'Đen', N'wor2.jpg', N'16G (8GB * 2)', N'Windows 10', N'NV 920M - 2GB', N'Shark Bay i7-4720HQ ', N'6 Cell', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (23, 3, N'MSI WORKSTATION WS60 4K Edition', 55000000, N'2.5', N'Đen', N'wor3.jpeg', N'	
16G (8GB *2) DDRIII', N'Windows 10', N'
Quadro K2100M , 2GB GDDR5
 

Super Raid - 256G SSD (M2. SATA)+1TB (SATA) 7200rpm', N'Shark Bay i7-4720HQ ', N'9 Cell', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (26, 4, N'ASUS GAMING GL552JX-XO093D', 17000000, N'2.1', N'Xám Bạc', N'asu1.jpg', N'6GB DDR3 1600 ', N'Windows 8.1', N'NVIDIA® GeForce GTX950M/ 4GB DDR3 & Intel HD 4600 ', N'Intel® Core™ i5-4200H (2.8Ghz turbo boost 3.4Ghz, 3M Cache)', N'6 Cell', N'	
Sách hướng dẫn + AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (27, 4, N'ASUS K555LB-XX302D HDD 1TB', 12600000, N'2.3', N'Đen Xám', N'asu2.jpg', N'4GB DDR3L/1600Mhz (onboard) ', N'Windows 8.1', N'Nvidia Geforce GT940M 2G DDR3 ', N'Intel Core i5 5200U (2.2Ghz/3MB cache) ', N'2 Cell', N'	
Sách hướng dẫn + AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (29, 4, N'ASUS GAMING GL552VX-DM070D', 22350000, N'2.8', N'Đen', N'asu3.jpg', N'1 x 8GB DDR4, 2133MHz (2 slots)', N'Windows 10 Pro 64 Bit', N'NVIDIA GeForce GTX 950M (4GB GDDR5 VRAM, Bus Width: 128 Bit) 4170MB', N'Intel Core i7-6700U', N'4 Cell Ext (48Wh)', N'	
Sách hướng dẫn + AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (31, 4, N'ASUS X454LA-WX577D HDD 1TB', 8200000, N'2.1', N'Bạc', N'asu4.jpg', N'4G DDR3L (onboard)', N'Window 8 Pro', N'Intel HD 5500', N'Intel Core i3 5005U (2.0Ghz/3MB cache)', N'2 cell', N'	
Sách hướng dẫn + AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (32, 4, N'ASUS K501UX-DM132D STPro HDD 1TB', 21000000, N'2.3', N'Xám', N'asu5.jpg', N'8GB DDR3L/1600Mhz ', N'Windows 10', N'Nividia Geforce GTX950M 4G DDR3', N'Intel Core i7 6500U Skylake', N'4 Cell', N'	
Sách hướng dẫn + AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (33, 5, N'Dell Inspiron 3458 TXTGH2 HDD 1TB', 8200000, N'1.8', N'Đen', N'del1.jpg', N'4GB 1600MHz DDR3L', N'Windows 10 Pro', N'Intel HD 5500 ', N'Intel Core™ i3 5005U (2*2.0Ghz / 3MB Cache) ', N'5 Cell', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (34, 5, N'Dell Inspiron 3459 C3I51105 HDD 1TB', 12000000, N'2.1', N'Đen, Xám, Bạc', N'del2.jpg', N'4GB 1600MHz DDR3L ', N'Windows 10', N'Intel HD 5200', N'Intel Core™ i5 6200U (2*2.3Ghz / 3MB Cache, Turbo boost 2.8Ghz) Skylake ', N'3 Cell', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (35, 5, N'Dell Inspiron 7559 Gaming HDD 1TB', 22000000, N'2.3', N'Đen', N'del3.jpg', N'4GB DDR3L 1600', N'Windows 10', N'Nvidia Geforce GTX960M 4G DDR5', N'Intel Core™ i5 6300HQ (2.3G, 6MB L3 Cache)  ', N'5 Cell', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (36, 5, N'Dell XPS 13 (9343) 70055805 HDD 1TB', 27000000, N'1.7', N'Xám Bạc', N'del4.jpg', N'4GB DDR3 /1600Ghz ', N'Windows 10', N'Intel HD 5500', N'Intel® Core™ i5 5200U (2*2.2Ghz, Turbo Boost 2.7Ghz, 3MB cache) BroadWell ', N'5 Cell', N'AC Apdapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (38, 5, N'Dell XPS 13 (9350) 1T7N45 HDD 1TB', 42000000, N'1.29', N'Bạc', N'del5.jpg', N'8GB DDR3L 1866 (onboard) ', N'Win 10 SL 64 bits + Office Personal 365', N'Intel HD 520', N'Intel® Core™ i7 6500U (2*2.5Ghz, Turbo Boost 3.1Ghz, 4MB cache) SKYLAKE ', N'7 Cell', N'Sách hướng dẫn + AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (39, 5, N'Dell XPS 15 9550 STPro HDD 1TB SPS', 37000000, N'1.78', N'Bạc', N'del6.jpg', N'8GB DDR4 2133Mhz', N'Windows 10 X64 Pro', N'Nvidia Geforce GTX960M 2G DDR5 & Intel HD 530 ', N'Intel® Core™ i5 6300HQ (2*2.3Ghz, Turbo Boost 3.2Ghz, 6MB cache) SKYLAKE ', N'5 Cell', N'Sách hướng dẫn + AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (41, 5, N'Dell XPS 15 9560 STPro HDD 1TB SPS', 32000000, N'1.5', N'Bạc', N'del7.jpg', N'8GB DDR4 2133Mhz', N'Windows 10 X64 Pro', N'Nvidia Geforce GTX960M 2G DDR5 & Intel HD 5200 ', N'Intel® Core™ i5 6300HQ (2*2.3Ghz, Turbo Boost 3.2Ghz, 6MB cache) SKYLAKE ', N'5 Cell', N'Sách hướng dẫn + AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (42, 5, N'Dell XPS 15 9570 STPro HDD 1TB SPS', 34000000, N'1.62', N'Bạc', N'del8.jpg', N'8GB DDR4 2133Mhz', N'Windows 10 X64 Pro', N'Nvidia Geforce GTX960M 2G DDR5 & Intel HD 5300 ', N'Intel® Core™ i5 6300HQ (2*2.3Ghz, Turbo Boost 3.2Ghz, 6MB cache) SKYLAKE ', N'5 Cell', N'Sách hướng dẫn + AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (44, 6, N'HP ENVY 13-D019TU P6M18PA STPro HDD 500', 23400000, N'1.36', N'Bạc', N'hp1.jpg', N'8GB DDR3L 1600Mhz (onboard)', N'Windows 10 SL', N'Intel® HD 520', N'Intel® Core i7 6500U(2.5Ghz /4MB L3 cache) / Skylake', N'3 Cell', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (45, 6, N'HP 15-AC140TX P3V18PA STPro HDD 500', 19500000, N'1.56', N'Bạc', N'hp2.jpg', N'6GB DDR3L 1600Mhz (onboard)', N'Windows 10 SL', N'Intel® HD 520', N'Intel Core i5-6200U skylake', N'3 Cell', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (46, 6, N'HP 14-ac022TU M7R75PA STPro HDD 500', 17000000, N'1.7', N'Bạc', N'hp3.jpg', N'4GB DDR3L 1600Mhz (onboard)', N'Windows 10 SL', N'Intel® HD 520', N'Intel® Core i5 6500U(2.5Ghz /4MB L3 cache) / Skylake', N'3 Cell', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (47, 6, N'HP Pavilion X360 11-k116TU P3U75PA', 16500000, N'2.1', N'Đỏ', N'hp4.jpg', N'4GB DDR3L 1600Mhz (onboard)', N'Windows 10 SL', N'Intel® HD 520', N'Intel® Core i5 6500U(2.5Ghz /4MB L3 cache) / Skylake', N'3 Cell', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (48, 6, N'HP Probook 450 G3 T9S24PA CPU Skylake', 12000000, N'2.5', N'Đen', N'hp5.jpg', N'4GB DDR3L 1600Mhz (onboard)', N'Windows 10 SL', N'Intel® HD 520', N'Intel® Core i3 6500U(2.5Ghz /4MB L3 cache) / Skylake', N'3 Cell', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (49, 1, N'Alienware 14U Gaming CPU Skylake', 21000000, N'2.7', N'Đen Xám', N'ali4.jpg', N'4GB DDR4 2133Mhz (2G * 2) ', N'Windows 10 Pro 64 Bit', N'NVIDIA® GeForce GT720M 2GB GDDR5', N'Skylake i5-6700HQ (6MB Cache, up to 3.5GHz w/ Turbo Boost)', N'8 Cell lithium (92Wh)', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (50, 1, N'Alienware 12A Gaming CPU Skylake', 23000000, N'1.8', N'Đen Bạc', N'ali5.jpg', N'6GB DDR4 2133Mhz ', N'Windows 10 Pro 64 Bit', N'NVIDIA® GeForce GT980M 2GB GDDR5', N'Skylake i7-6700HQ (6MB Cache, up to 3.5GHz w/ Turbo Boost)', N'8 Cell lithium (92Wh)', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (51, 1, N'Alienware 17 Gaming Skylake STPro SSD 500', 27000000, N'1.9', N'Đen', N'ali6.jpg', N'8GB DDR4 2133Mhz (4G * 2) ', N'Windows 10 Pro 64 Bit', N'NVIDIA® GeForce GTX620M 2GB GDDR5', N'Skylake i5-6700HQ (6MB Cache, up to 3.5GHz w/ Turbo Boost)', N'8 Cell lithium (92Wh)', N'AC Adapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (52, 7, N'Sony SVP132190X Black Full HD', 25000000, N'1.8', N'Đen', N'sn1.jpg', N'6GB DDR3', N'Windows 8', N'NVIDIA® GeForce GT980M 2GB GDDR5', N'Intel Core i7', N'3 Cell', N'AC Apdapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (53, 7, N'Sony SVF13N24CX/B STPro', 19590000, N'2.1', N'Đen', N'sn2.jpg', N'4GB DDR3', N'Windows 8', N'AMD 256M 2GB', N'Intel Core i7', N'3 Cell', N'AC Apdapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (54, 7, N'Sony SVF14A190X/P', 22000000, N'1.4', N'Hồng', N'sn3.jpeg', N'4GB DDR4 2133Mhz (2G * 2) ', N'Windows 8', N'NVIDIA® GeForce GT980M 2GB GDDR5', N'Intel Core i5-6200U skylake', N'3 Cell', N'AC Apdapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (55, 7, N'Sony SVD132190X I5-4200U HDD 1T', 17500000, N'2.1', N'Đen', N'sn4.jpg', N'4GB DDR4 2133Mhz (2G * 2) ', N'Windows 8', N'AMD 256M 2GB', N'Intel Core i5-6200U skylake', N'3 Cell', N'AC Apdapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (56, 7, N'Sony T300CHI-FL059H I5-4200U HDD 1T', 21540000, N'1.9', N'Đen', N'sn5.jpg', N'8GB DDR3', N'Windows 8', N'NVIDIA® GeForce GT980M 2GB GDDR5', N'Intel Core i7 IA', N'3 Cell', N'AC Apdapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (57, 7, N'Sony Vaio VPC CW21FD I5-4200U HDD 1T', 23000000, N'1.6', N'Đen', N'sn6.jpg', N'8GB DDR3', N'Windows 8', N'AMD 256M 2GB', N'Intel Core i7 HM', N'3 Cell', N'AC Apdapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (58, 7, N'Sony Vaio Fit SVF1421DSG 33212G50W8
', 28000000, N'1.7', N'Đen', N'sn7.jpg', N'8GB DDR3', N'Windows 8', N'HM860M', N'Intel Core i7', N'3 Cell', N'AC Apdapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (59, 7, N'Sony Vaio Fit SVF14217SG 33224G50GW8T', 26540000, N'2.5', N'Đen', N'sn8.jpg', N'4GB DDR4 2133Mhz (2G * 2) ', N'Windows 8', N'AMD 256M 2GB', N'Intel Core i7', N'3 Cell', N'AC Apdapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (60, 7, N'Sony VAIO Tap 11 SVT11215SG 54214G128W8T
', 27000000, N'3.2', N'Đen', N'sn9.jpg', N'4GB DDR3', N'Windows 8', N'NVIDIA® GeForce GT980M 2GB GDDR5', N'Intel Core i5-6200U Skylake', N'3 Cell', N'AC Apdapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (61, 7, N'Sony Vaio SVD13217PG 74508G256W8', 36000000, N'1.9', N'Đen', N'sn10.jpg', N'8GB DDR3', N'Windows 8', N'NVIDIA® GeForce GT980M 2GB GDDR5', N'Intel Core i7', N'3 Cell', N'AC Apdapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (62, 7, N'Sony SVE14A37CVH I5-4200U HDD 1T', 21450000, N'2.1', N'Đen', N'sn11.jpg', N'4GB DDR4 2133Mhz (2G * 2) ', N'Windows 8', N'AMD 920M 2GB', N'Intel Core i5-6200U Skylake', N'8 Cell', N'AC Apdapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (63, 7, N'Sony Vaio SVE14132CV/W', 23640000, N'2.1', N'Trắng', N'sn12.jpg', N'6GB DDR3', N'Windows 8', N'NVIDIA® GeForce GT980M 2GB GDDR5', N'Intel Core i7', N'3 Cell', N'AC Apdapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (64, 7, N'Sony Vaio VPC- F237HG 3D', 48980000, N'1.3', N'Đen - 3D touch', N'sn13.jpg', N'32GB DDR4 2133Mhz (16G * 2) ', N'Windows 10 Pro 64 Bit', N'NVIDIA® GeForce GT980M 2GB GDDR5', N'Intel Core i7 Skylake', N'3 Cell', N'AC Apdapter', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (67, 11, N'Apple Macbook Air MJVE2', 21000000, N'1.4', N'Bạc', N'app1.jpg', N'4GB 1600mhz', N'MAC OS', N'Intel HD Graphics 6000', N'CPU Intel Core i5 - 1.6Ghz up to 2.7Ghz (Broadwell)', N'7 Cell', N'Sạc, Cáp, Chuột', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (68, 11, N'Apple MacBook Pro MF839', 21450000, N'1.2', N'Bạc', N'app2.jpg', N'4GB 1600mhz', N'MAC OS', N'Intel HD Graphics 6000', N'CPU Intel Core i5 - 1.6Ghz up to 2.7Ghz (Broadwell)', N'7 Cell', N'Sạc, Cáp, Chuột', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (69, 11, N'APPLE Macbook MK4M2 Early', 18000000, N'1.5', N'Vàng', N'app3.jpg', N'4GB 1600mhz', N'MAC OS', N'Intel HD Graphics 6000', N'CPU Intel Core i5-5250U 1.6GHz/3MB', N'7 Cell', N'Sạc, Cáp, Chuột', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (70, 11, N'Apple Macbook Air MJVE2', 24000000, N'1.8', N'Bạc', N'app4.jpg', N'4GB 1600mhz', N'MAC OS', N'Intel HD Graphics 6000', N'CPU Intel Core i5 - 1.6Ghz up to 2.7Ghz (Broadwell)', N'7 Cell', N'Sạc, Cáp, Chuột', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (71, 11, N'Apple Macbook Air MJVM2 2015', 27000000, N'2.1', N'Bạc', N'app5.jpg', N'4GB 1600mhz', N'MAC OS', N'Intel HD Graphics 6000', N'CPU Intel Core i7 - 1.6Ghz up to 2.7Ghz (Broadwell)', N'7 Cell', N'Sạc, Cáp, Chuột', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (72, 11, N'Apple Macbook Air MJVE2', 26400000, N'2.3', N'Bạc', N'app6.jpg', N'4GB 1600mhz', N'MAC OS', N'Intel HD Graphics 6000', N'CPU Intel Core i5 - 1.6Ghz up to 2.7Ghz (Broadwell)', N'7 Cell', N'Sạc, Cáp, Chuột', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (73, 11, N'Apple MacBook Pro MF840 CPU 4200U SSD 500', 31500000, N'1.7', N'Bạc', N'app7.jpg', N'4GB 1600mhz', N'MAC OS', N'Intel HD Graphics 6000', N'CPU Intel Core i7 - 1.6Ghz up to 2.7Ghz (Broadwell)', N'7 Cell', N'Sạc, Cáp, Chuột', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (74, 11, N'APPLE Macbook (MF855) Early 2015', 25000000, N'1.56', N'Bạc', N'app8.jpg', N'4GB 1600mhz', N'MAC OS', N'Intel HD Graphics 6000', N'CPU Intel Core i5 - 1.6Ghz up to 2.7Ghz (Broadwell)', N'7 Cell', N'Sạc, Cáp, Chuột', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (75, 11, N'APPLE Macbook (MF865) Early 2015', 31250000, N'1.89', N'Bạc', N'app9.jpg', N'4GB 1600mhz', N'MAC OS', N'Intel HD Graphics 6000', N'CPU Intel Core i5-5250U 1.6GHz/3MB', N'7 Cell', N'Sạc, Cáp, Chuột', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (76, 11, N'Apple MacBook Pro MF841 Retina', 37000000, N'2', N'Bạc', N'app10.jpg', N'6GB 1600mhz', N'MAC OS', N'Intel HD Graphics 6000', N'CPU Intel Core i5 - 1.6Ghz up to 2.7Ghz (Broadwell)', N'7 Cell', N'Sạc, Cáp, Chuột', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (77, 11, N'Apple Macbook (MK4N2) Early 2015', 51000000, N'1.38', N'Vàng', N'app11.jpg', N'16G (8GB *4) DDRIII', N'MAC OS', N'Intel HD Graphics 6000', N'CPU Intel Core i7-5250U 1.6GHz/3MB', N'7 Cell', N'Sạc, Cáp, Chuột', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (78, 11, N'Apple Macbook Air MJVM2ZP/A HONGKONG', 32000000, N'1.89', N'Bạc', N'app12.jpg', N'4GB 1600mhz', N'MAC OS', N'Intel HD Graphics 6000', N'CPU Intel Core i5-5250U 1.6GHz/3MB', N'7 Cell', N'Sạc, Cáp, Chuột', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (79, 11, N'Apple Macbook Pro Retina MF839ZP/A', 21890000, N'2.5', N'Bạc', N'app13.jpg', N'8GB 1600mhz', N'MAC OS', N'Intel HD Graphics 6000', N'CPU Intel Core i7-5250U 1.6GHz/3MB', N'7 Cell', N'Sạc, Cáp, Chuột', N'12 tháng')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (93, 9, N'LENOVO 5541', 17000000, N'1.7', N'BẠC', N'ali1.jpg', N'8GB', N'WINDOWS 8.1 PRO', N'16GB', N'CORE INTEL I7 S', N'10 cell', N'Sạc cáp', N'12 THÁNG')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (105, 3, N'LENOVO 5541', 0, N'1.7', N'BẠC', N'12301622_521110334717818_2925575681928786293_n.jpg', N'8GB', N'WIN 10 PRO', N'16GB', N'CORE INTEL I7 S', N'5 CELL', N'AC ADAPTER', N'12 THÁNG')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (106, 11, N'GAMING MSSI', 21000000, N'2.1', N'Xám Bạc', N'asussss.jpg', N'4gb', N'WIN 10 PRO', N'16GB', N'CORE INTEL I7 S', N'5 CELL', N'AC ADAPTER', N'12 THÁNG')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (108, 7, N'SONY VAIO FIT 2357', 31000000, N'1.7', N'Xám Bạc', N'minh_hoa_dong_vat_27.JPG', N'8GB', N'WINDOWS 8.1 PRO', N'16GB', N'CORE INTEL I7 S', N'5 CELL', N'AC ADAPTER', N'12 THÁNG')
INSERT [dbo].[SANPHAM] ([ID_SP], [ID_DM], [tensanpham], [giabd], [trongluong], [mausac], [ImgLink], [memory], [hedieuhanh], [vga], [cpuz], [battery], [phukiendikem], [chedobaohanh]) VALUES (111, 8, N'TOSHIBA HASWELL', 175800000, N'1.2', N'VÀNG CAM', N'notebook-512.png', N'16GB', N'OS 10', N'4GB', N'Intel Core i7 7200U Haswell', N'8 Cell', N'AC - Adapter', N'12 tháng')
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
SET IDENTITY_INSERT [dbo].[SPGIAMGIA] ON 

INSERT [dbo].[SPGIAMGIA] ([ID_KM], [ID_SP], [soluong], [giaht], [ngayban]) VALUES (1, 23, 12, 50000000, CAST(0x363B0B00 AS Date))
INSERT [dbo].[SPGIAMGIA] ([ID_KM], [ID_SP], [soluong], [giaht], [ngayban]) VALUES (2, 26, 1, 15000000, CAST(0x363B0B00 AS Date))
INSERT [dbo].[SPGIAMGIA] ([ID_KM], [ID_SP], [soluong], [giaht], [ngayban]) VALUES (3, 27, 13, 12000000, CAST(0x363B0B00 AS Date))
INSERT [dbo].[SPGIAMGIA] ([ID_KM], [ID_SP], [soluong], [giaht], [ngayban]) VALUES (4, 29, 2, 22000000, CAST(0x363B0B00 AS Date))
INSERT [dbo].[SPGIAMGIA] ([ID_KM], [ID_SP], [soluong], [giaht], [ngayban]) VALUES (5, 31, 5, 8000000, CAST(0x363B0B00 AS Date))
SET IDENTITY_INSERT [dbo].[SPGIAMGIA] OFF
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON 

INSERT [dbo].[TAIKHOAN] ([ID_TK], [username], [password], [tentk], [phone], [mail], [diachi]) VALUES (2, N'Admin', N'admin', N'Trần Văn Quyết', N'0943103168      ', N'trandirector.ctv@gmail.com', N'Hà Nội')
INSERT [dbo].[TAIKHOAN] ([ID_TK], [username], [password], [tentk], [phone], [mail], [diachi]) VALUES (3, N'nguyenhien279', N'123', N'Nguyễn Thị Hiền', N'0962380564      ', N'nguyenhien279.mta@gmail.com', N'Hà Nội')
INSERT [dbo].[TAIKHOAN] ([ID_TK], [username], [password], [tentk], [phone], [mail], [diachi]) VALUES (4, N'thanhhang', N'123', N'Nông Thị Hằng', N'0121001002      ', N'regeditmail@gmail.com', N'Hà Nội')
INSERT [dbo].[TAIKHOAN] ([ID_TK], [username], [password], [tentk], [phone], [mail], [diachi]) VALUES (5, N'thanhthanhmta', N'123', N'Tạ Hải Thanh', N'0121001003      ', N'regeditmail@gmail.com', N'Hà Nội')
INSERT [dbo].[TAIKHOAN] ([ID_TK], [username], [password], [tentk], [phone], [mail], [diachi]) VALUES (6, N'khongchinh84', N'123', N'Khổng Đức Chính', N'0121001004      ', N'regeditmail@gmail.com', N'Hà Nội')
INSERT [dbo].[TAIKHOAN] ([ID_TK], [username], [password], [tentk], [phone], [mail], [diachi]) VALUES (8, N'tranhuong', N'123', N'Trần Thị Hương', N'0121001005      ', N'regeditmail@gmail.com', N'Hà Nội')
INSERT [dbo].[TAIKHOAN] ([ID_TK], [username], [password], [tentk], [phone], [mail], [diachi]) VALUES (10, N'TINO', N'0943103168', N'Trần Văn Quyết', N'0943103168      ', N'trandirector.ctv@gmail.com', N'Hà Nội')
INSERT [dbo].[TAIKHOAN] ([ID_TK], [username], [password], [tentk], [phone], [mail], [diachi]) VALUES (11, N'TINO2', N'0943103168', N'Trần Văn Quyết', N'0943103168      ', N'trandirector.ctv@gmail.com', N'Hà Nội')
INSERT [dbo].[TAIKHOAN] ([ID_TK], [username], [password], [tentk], [phone], [mail], [diachi]) VALUES (12, N'nguyenhien279', N'123', N'Trần Văn Quyết', N'0943103168      ', N'trandirector.ctv@gmail.com', N'Thái Bình')
INSERT [dbo].[TAIKHOAN] ([ID_TK], [username], [password], [tentk], [phone], [mail], [diachi]) VALUES (13, N'tranquyet261', N'123', N'Trần Văn Quyết', N'0943103168      ', N'trandirector.ctv@gmail.com', N'Thái Bình')
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
SET IDENTITY_INSERT [dbo].[TINTUC] ON 

INSERT [dbo].[TINTUC] ([ID_TIN], [ID_NHOM], [tentin], [ImgTin], [mota]) VALUES (19, 1, N'Khuyến Mại 1', N'imgtin1.jpg', N'Khuyến mại 1')
INSERT [dbo].[TINTUC] ([ID_TIN], [ID_NHOM], [tentin], [ImgTin], [mota]) VALUES (20, 2, N'Khuyến Mại 1', N'imgtin1.jpg', N'Khuyến mại 1')
INSERT [dbo].[TINTUC] ([ID_TIN], [ID_NHOM], [tentin], [ImgTin], [mota]) VALUES (21, 3, N'Khuyến Mại 1', N'imgtin1.jpg', N'Khuyến mại 1')
INSERT [dbo].[TINTUC] ([ID_TIN], [ID_NHOM], [tentin], [ImgTin], [mota]) VALUES (22, 4, N'Khuyến Mại 1', N'imgtin1.jpg', N'Khuyến mại 1')
INSERT [dbo].[TINTUC] ([ID_TIN], [ID_NHOM], [tentin], [ImgTin], [mota]) VALUES (23, 5, N'Khuyến Mại 1', N'imgtin1.jpg', N'Khuyến mại 1')
INSERT [dbo].[TINTUC] ([ID_TIN], [ID_NHOM], [tentin], [ImgTin], [mota]) VALUES (24, 6, N'Khuyến Mại 1', N'imgtin1.jpg', N'Khuyến mại 1')
INSERT [dbo].[TINTUC] ([ID_TIN], [ID_NHOM], [tentin], [ImgTin], [mota]) VALUES (25, 7, N'Khuyến Mại 1', N'imgtin1.jpg', N'Khuyến mại 1')
INSERT [dbo].[TINTUC] ([ID_TIN], [ID_NHOM], [tentin], [ImgTin], [mota]) VALUES (26, 8, N'Khuyến Mại 1', N'imgtin1.jpg', N'Khuyến mại 1')
INSERT [dbo].[TINTUC] ([ID_TIN], [ID_NHOM], [tentin], [ImgTin], [mota]) VALUES (27, 9, N'Khuyến Mại 1', N'imgtin1.jpg', N'Khuyến mại 1')
SET IDENTITY_INSERT [dbo].[TINTUC] OFF
ALTER TABLE [dbo].[BINHLUAN]  WITH CHECK ADD  CONSTRAINT [FK_BINHLUAN_SANPHAM] FOREIGN KEY([ID_SP])
REFERENCES [dbo].[SANPHAM] ([ID_SP])
GO
ALTER TABLE [dbo].[BINHLUAN] CHECK CONSTRAINT [FK_BINHLUAN_SANPHAM]
GO
ALTER TABLE [dbo].[BINHLUAN]  WITH CHECK ADD  CONSTRAINT [FK_BINHLUAN_TAIKHOAN] FOREIGN KEY([ID_TK])
REFERENCES [dbo].[TAIKHOAN] ([ID_TK])
GO
ALTER TABLE [dbo].[BINHLUAN] CHECK CONSTRAINT [FK_BINHLUAN_TAIKHOAN]
GO
ALTER TABLE [dbo].[CTDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDONHANG_DONHANG] FOREIGN KEY([ID_DH])
REFERENCES [dbo].[DONHANG] ([ID_DH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTDONHANG] CHECK CONSTRAINT [FK_CTDONHANG_DONHANG]
GO
ALTER TABLE [dbo].[CTDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDONHANG_SANPHAM] FOREIGN KEY([ID_SP])
REFERENCES [dbo].[SANPHAM] ([ID_SP])
GO
ALTER TABLE [dbo].[CTDONHANG] CHECK CONSTRAINT [FK_CTDONHANG_SANPHAM]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_TINTUC] FOREIGN KEY([ID_TIN])
REFERENCES [dbo].[TINTUC] ([ID_TIN])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_TINTUC]
GO
ALTER TABLE [dbo].[PHANQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_PHANQUYEN_TAIKHOAN] FOREIGN KEY([ID_TK])
REFERENCES [dbo].[TAIKHOAN] ([ID_TK])
GO
ALTER TABLE [dbo].[PHANQUYEN] CHECK CONSTRAINT [FK_PHANQUYEN_TAIKHOAN]
GO
ALTER TABLE [dbo].[QUYEN]  WITH CHECK ADD  CONSTRAINT [FK_QUYEN_PHANQUYEN] FOREIGN KEY([TENQUYEN])
REFERENCES [dbo].[PHANQUYEN] ([TENQUYEN])
GO
ALTER TABLE [dbo].[QUYEN] CHECK CONSTRAINT [FK_QUYEN_PHANQUYEN]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_DANHMUC] FOREIGN KEY([ID_DM])
REFERENCES [dbo].[DANHMUC] ([ID_DM])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_DANHMUC]
GO
ALTER TABLE [dbo].[SPGIAMGIA]  WITH CHECK ADD  CONSTRAINT [FK_SPGIAMGIA_SANPHAM] FOREIGN KEY([ID_SP])
REFERENCES [dbo].[SANPHAM] ([ID_SP])
GO
ALTER TABLE [dbo].[SPGIAMGIA] CHECK CONSTRAINT [FK_SPGIAMGIA_SANPHAM]
GO
ALTER TABLE [dbo].[TINTUC]  WITH CHECK ADD  CONSTRAINT [FK_TINTUC_NHOMTIN] FOREIGN KEY([ID_NHOM])
REFERENCES [dbo].[NHOMTIN] ([ID_NHOM])
GO
ALTER TABLE [dbo].[TINTUC] CHECK CONSTRAINT [FK_TINTUC_NHOMTIN]
GO
