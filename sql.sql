USE [master]
GO
/****** Object:  Database [QuanLyCungCapVideo]    Script Date: 6/20/2019 10:55:13 AM ******/
CREATE DATABASE [QuanLyCungCapVideo]
GO
USE [QuanLyCungCapVideo]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 6/20/2019 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[IDTK] [int] IDENTITY(1,1) NOT NULL,
	[TenND] [nvarchar](100) NULL,
	[MatKhau] [varchar](50) NULL,
	[DienThoai] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[IDQuyen] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THANHTOAN]    Script Date: 6/20/2019 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANHTOAN](
	[IDThanhToan] [int] IDENTITY(1,1) NOT NULL,
	[HTTT] [nvarchar](50) NULL,
	[NgayTT] [datetime] NULL,
	[NgayKT] [datetime] NULL,
	[GoiCuoc] [nvarchar](100) NULL,
	[TenND] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDThanhToan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[THELOAI]    Script Date: 6/20/2019 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THELOAI](
	[IDTL] [int] IDENTITY(1,1) NOT NULL,
	[TenTL] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VIDEO]    Script Date: 6/20/2019 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIDEO](
	[IDVideo] [int] IDENTITY(1,1) NOT NULL,
	[TenVideo] [nvarchar](100) NULL,
	[IDTL] [int] NULL,
	[QuocGia] [nvarchar](50) NULL,
	[DaoDien] [nvarchar](50) NULL,
	[LuotXem] [int] NULL,
	[LinkVideo] [nvarchar](500) NULL,
	[LinkPoster] [nvarchar](500) NULL,
	[TomTat] [nvarchar](1000) NULL,
 CONSTRAINT [PK_VIDEO] PRIMARY KEY CLUSTERED 
(
	[IDVideo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YEUTHICH]    Script Date: 6/20/2019 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YEUTHICH](
	[IDYT] [int] IDENTITY(1,1) NOT NULL,
	[LinkVideo] [nvarchar](200) NULL,
	[LinkPoster] [nvarchar](200) NULL,
	[TenND] [nvarchar](100) NULL,
	[TenVideo] [nvarchar](100) NULL,
	[QuocGia] [nvarchar](50) NULL,
	[DaoDien] [nvarchar](50) NULL,
	[LuotXem] [int] NULL,
	[TomTat] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDYT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON 

INSERT [dbo].[TAIKHOAN] ([IDTK], [TenND], [MatKhau], [DienThoai], [Email], [IDQuyen]) VALUES (1, N'admin', N'admin', N'555151', N'abc@gmail.com', N'Admin')
INSERT [dbo].[TAIKHOAN] ([IDTK], [TenND], [MatKhau], [DienThoai], [Email], [IDQuyen]) VALUES (2, N'staff', N'staff', N'651654646', N'b@gmail.com', N'User')
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
SET IDENTITY_INSERT [dbo].[THANHTOAN] ON 

INSERT [dbo].[THANHTOAN] ([IDThanhToan], [HTTT], [NgayTT], [NgayKT], [GoiCuoc], [TenND]) VALUES (1, N'Credit Card ', CAST(N'2019-11-06 00:00:00.000' AS DateTime), CAST(N'2019-11-07 00:00:00.000' AS DateTime), N'Basic', N'staff')
INSERT [dbo].[THANHTOAN] ([IDThanhToan], [HTTT], [NgayTT], [NgayKT], [GoiCuoc], [TenND]) VALUES (3, N'MoMo', CAST(N'2019-06-14 23:01:30.903' AS DateTime), CAST(N'2019-07-14 23:01:30.903' AS DateTime), N'BASIC', N'dfsd')
INSERT [dbo].[THANHTOAN] ([IDThanhToan], [HTTT], [NgayTT], [NgayKT], [GoiCuoc], [TenND]) VALUES (4, N'Credit Card', CAST(N'2019-06-16 21:57:04.283' AS DateTime), CAST(N'2019-07-16 21:57:04.283' AS DateTime), N'BASIC', N'abc')
INSERT [dbo].[THANHTOAN] ([IDThanhToan], [HTTT], [NgayTT], [NgayKT], [GoiCuoc], [TenND]) VALUES (5, N'Credit Card', CAST(N'2019-06-16 22:45:32.447' AS DateTime), CAST(N'2019-07-16 22:45:32.447' AS DateTime), N'BASIC', N'uyenbeo')
INSERT [dbo].[THANHTOAN] ([IDThanhToan], [HTTT], [NgayTT], [NgayKT], [GoiCuoc], [TenND]) VALUES (6, N'Credit Card', CAST(N'2019-06-19 17:35:08.747' AS DateTime), CAST(N'2019-07-19 17:35:08.747' AS DateTime), N'BASIC', N'uyen123')
INSERT [dbo].[THANHTOAN] ([IDThanhToan], [HTTT], [NgayTT], [NgayKT], [GoiCuoc], [TenND]) VALUES (7, N'MoMo', CAST(N'2019-06-19 18:16:03.430' AS DateTime), CAST(N'2019-12-19 18:16:03.430' AS DateTime), N'STANDARD', N'abcx')
SET IDENTITY_INSERT [dbo].[THANHTOAN] OFF
SET IDENTITY_INSERT [dbo].[THELOAI] ON 

INSERT [dbo].[THELOAI] ([IDTL], [TenTL]) VALUES (1, N'Hành Động')
INSERT [dbo].[THELOAI] ([IDTL], [TenTL]) VALUES (2, N'Viễn Tưởng')
INSERT [dbo].[THELOAI] ([IDTL], [TenTL]) VALUES (3, N'Tình Cảm')
INSERT [dbo].[THELOAI] ([IDTL], [TenTL]) VALUES (4, N'Phiêu Lưu')
INSERT [dbo].[THELOAI] ([IDTL], [TenTL]) VALUES (5, N'Hoạt Hình')
INSERT [dbo].[THELOAI] ([IDTL], [TenTL]) VALUES (6, N'Hài Kịch')
INSERT [dbo].[THELOAI] ([IDTL], [TenTL]) VALUES (7, N'Âm Nhạc')
SET IDENTITY_INSERT [dbo].[THELOAI] OFF
SET IDENTITY_INSERT [dbo].[VIDEO] ON 

INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (1, N'Doctor Strange', 1, N'Mỹ', N'Scott Derrickson', 1235, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\dr. strange\-Phù Thủy Tối Thượng-Doctor Strange (2016) [Full-Vietsub].mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\doctorstrange.jpg', N'DOCTOR STRANGE là câu chuyện về bác sĩ Giải Phẫu Thần Kinh tên Stephen Vincent Strange. Cuộc đời anh thay đổi từ sau một tai nạn xe hơi khủng khiếp. Sau tai nạn đó, Stephen nhận ra mình có những năng lực bí ẩn cũng như biết thêm về thế giới ma thuật huyền bí. Từ một vị bác sĩ bình thường, Stephen Strange dần nhận được nhiều siêu năng lực để cứu trái đất khỏi những tai họa.')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (2, N'Chàng Ngố Tập Yêu', 3, N'Romania', N'Cristina Jacob', 1235, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\changngotapyeu.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\2.jpg', N'309 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (3, N'Luôn Luôn Có Thể', 3, N'Mỹ', N'Nahnatchka Khan', 1452, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\luonluoncothe.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\1.jpg', N'303 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (4, N'Fantastic Beasts and Where To Find Them', 1, N'Mỹ', N'David Yates', 1255, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\fbawtft\Sinh Vật Huyền Bí và Nơi Tìm Ra Chúng-Fantastic Beasts and Where to Find Them (2016) [Full HD-Vietsub] (Xem Full).mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\fbawtoft.jpg', N'Lấy bối cảnh trước Harry Potter, Fantastic Beasts And Where To Find Them kể về hành trình khám phá thế giới kỳ bí của pháp sư Newt Scamander do nam diễn viên Eddie Redmayne tài năng đảm nhận. Anh lên đường tới New York vào năm 1926 và bắt đầu quá trình đúc kết những tư liệu về các loài sinh vật mà về sau trường Hogwarts dùng để giảng dạy. Đây cũng là một trong những cuốn sách giáo khoa được nhắc tới trong tập 1 của Harry Potter – Harry Potter và Hòn đá phù thủy.')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (5, N'Mới Lạ', 3, N'Mỹ', N'Drake Doremus', 523, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\moila.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\5.jpg', N'337 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (6, N'Mong Em Hạnh Phúc ', 3, N'Đài Loan', N'Gavin Lin', 245, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\mongemhanhphuc.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\6.jpg', N'305 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (7, N'Người Bạn Tuyệt Vời', 3, N'Mỹ', N'Jennifer Kaytin Robinson', 3569, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\nguoibantuyetvoi.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\7.jpg', N'92 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (8, N'Hạ Cuối', 3, N'Mỹ', N'William Bindley', 435, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\hacuoi.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\8.jpg', N'309 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (9, N'Năm Bước Để Yêu', 3, N'Mỹ', N'Justin Baldoni', 4568, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\nambuocdeyeu.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\3.jpg', N'336 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (10, N'Biệt Đội Siêu Anh Hùng 4: Tàn Cuộc', 2, N'Mỹ', N'Joe Russo, Anthony Russo', 458, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\endgame.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\9.jpg', N'383 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (11, N'Quỷ Đỏ', 2, N'Mỹ, Anh, Bulgaria', N'Neil Marshall', 2353, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\quydo.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\30.jpg', N'320 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (12, N'Tề Thiên Đại Thánh: Hỏa Diện Sơn', 2, N'Trung Quốc', N'Zhenzhao Lin', 2223, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\tethiendaithanh.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\31.jpg', N'90 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (13, N'Khu Nghĩ Dưỡng Xác Sống', 2, N'Anh, Tây Ban Nha, Belgium', N'Steve Barker,', 3352, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\khunghiduongsacsong.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\32.jpg', N'93 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (14, N'Đế Chế Mới', 2, N'Mỹ', N'Rupert Wyatt', 3222, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\dechemoi.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\33.jpg', N'309 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (15, N'Bộ Ba Quái Nhân', 2, N'Mỹ', N'M. Night Shyamalan,', 432, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\bobaquainhan.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\34.jpg', N'328 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (16, N'Đại Úy MARVEL', 2, N'Mỹ, Úc', N'Anna Boden, Ryan Fleck, ', 2445, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\daiuy.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\35.jpg', N'323 P')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (17, N'Giải Cứu Thế Giới', 2, N'Mỹ', N'Mỹ,', 3443, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\giaicuuthegioi.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\36.jpg', N'98 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (25, N'Ngón Tay Thứ Sáu', 4, N'Hàn Quốc', N'Jang Jae-Hyun,', 3233, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\ngontaythusau.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\25.jpg', N'322 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (26, N'Lưu lạc Địa Cầu', 4, N'Trung Quốc', N'Frant Gwo,', 322, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\luulacdiacau.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\26.jpg', N'325 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (27, N'Pokemon: Detective Pikachu', 4, N'Mỹ, Nhật, Canada', N'Rob Letterman, ', 233, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\pokemon.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\27.jpg', N'304p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (28, N'Liên Minh Người Dơi và Ninja Rùa', 4, N'Mỹ', N'Jake Castorena,', 3533, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\Batman vs. Teenage Mutant Ninja Turtles - Official Trailer.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\28.jpg', N'87 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (29, N'Nanh Trắng', 4, N'Mỹ, Pháp, Luxembourg, ', N'Alexandre Espigares, ', 2333, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\WHITE FANG Trailer (2038) Netflix Animated Movie.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\29.jpg', N'85 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (30, N'Lino Và 7 Kiếp Nạn', 4, N'Brazil', N'Rafael Ribas, ', 322, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\Lino - O Filme - Trailer Oficial - HD.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\30.jpg', N'87p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (31, N'Bí Kiếp Luyện rồng 3', 4, N'Mỹ ', N'Dean Deblois, ', 4432, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\How to Train Your Dragon- The Hidden World Trailer #3 (2039) - Movieclips Trailers.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\33.jpg', N'304 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (32, N'Khủng Long Đại Chiến', 4, N'Hàn Quốc', N'Han Sang-Ho, ', 323, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\SPECKLES- THE TARBOSAURUS 3D (English Subtitled Trailer).mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\32.jpg', N'88 p ')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (33, N'Độ Ta Không Độ Nàng', 5, N'Trung Quốc', N'Chưa rõ', 3423, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\[Vietsub] Độ ta không độ nàng .mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\33.jpg', N'5 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (34, N'Thành Phố Quỷ', 5, N'Mỹ', N'Doug Murphy, ', 322, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\Constantine- City of Demons Trailer (2038).mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\34.jpg', N'90 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (35, N'Thiết Giáp Chi Thành', 5, N'Nhật Bản', N'Chưa rõ', 232, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\thietgiapchithanh.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\35.jpg', N'82 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (36, N'Đầu Gấu Bắc Cực', 5, N'Mỹ', N'Richard Finn, Tim Maltby, ', 644, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\Norm of the North Official .mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\36.jpg', N'92 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (37, N'Nữ Hoàng tuyết', 5, N'Nga', N'Robert Lence, Aleksey Tsitsilin, ', 233, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\NỮ HOÀNG TUYẾT- XỨ SỞ TRONG GƯƠNG - TRAILER.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\37.jpg', N'80 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (38, N'Bảo Nodra', 5, N'Nhật Bản', N'Yôjirô Arai, ', 233, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\baonodra.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\38.jpg', N'26 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (39, N'Phong Ngữ Chú', 5, N'Trung Quốc', N'Kuo Liu, ', 448, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\phongnguchu.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\39.jpg', N'305 p ')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (40, N'Tớ Muốn Ăn Tụy Của Cậu', 5, N'Nhật Bản ', N'Shin''ichirô Ushijima, ', 333, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\I want to eat your pancreas Trailer #3.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\40.jpg', N'308 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (42, N'Đóa Hồng Của Tôi', 6, N'Hàn Quốc', N'Jo Seok-Hyun, ', 2356, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\ĐÓA HỒNG CỦA TÔI .mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\42.jpg', N'326 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (43, N'Cách Mạng Công Sở', 6, N'Mỹ', N'Mike Judge, ', 555, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\Office Space - #TBT Trailer - 20th Century FOX.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\43.jpg', N'89 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (44, N'Cặp Đôi lầy Lội', 6, N'Ấn Độ', N'Sachin Yardi, ', 3445, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\Chopsticks - Official Trailer [HD] - Netflix.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\44.jpg', N'300 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (45, N'Trò Vui', 6, N'Pháp, Belgium, ', N'Fred Cavayé, ', 665, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\LE JEU - de Fred Cavayé - Bande-annonce.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\45.jpg', N'90 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (46, N'Món Quà Bí Ẩn', 6, N'Mỹ ', N'Kate Melville,', 2433, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\Good Sam - Official Trailer [HD] - Netflix.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\46.jpg', N'89 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (47, N'Gia Đình Đại Chiến', 6, N'Mỹ, Anh ', N'Stephen Merchant, ', 263, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\FIGHTING WITH MY FAMILY - Official Trailer - MGM.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\47.jpg', N'308 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (48, N'Hội Tụ Danh Hài', 6, N'Mỹ', N'Jon Macks, ', 522, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\Still LAUGH-IN.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\48.jpg', N'60 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (49, N'Ban Nhạc Tai Tiếng', 7, N'Mỹ', N'Jeff Tremaine, ', 1234, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\The Dirt - Official Trailer [HD] - Netflix.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\49.jpg', N'107 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (50, N'Giai Điệu Trên Triền Dốc', 7, N'Nhật Bản ', N'Takahiro Miki, ', 1467, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\giaidieutrentriendoc.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\50.jpg', N'120 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (51, N'Những Chàng Trai Jersey', 7, N'Mỹ', N'Clint Eastwood, ', 1235, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\Jersey Boys Official.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\51.jpg', N'134 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (52, N'Lady Gaga: Nước Mắt và Vinh Quang', 7, N'Mỹ', N'Chris Moukarbel, ', 346, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\GAGA- FIVE FOOT TWO - Official Trailer [HD] - Netflix.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\52.jpg', N'100 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (53, N'Hát', 7, N'Hungari', N'Kristóf Deák, ', 345, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\Sing-Mindenki.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\53.jpg', N'25 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (54, N'Made: BigBang', 7, N'Hàn Quốc', N'Byeon Jin-Ho, ', 987, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\BIGBANG MADE THE MOVIE - Trailer.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\54.jpg', N'117 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (56, N'Ban Nhạc Dị Thường', 7, N'Mỹ, Anh, Ireland, ', N'Lenny Abrahamson, ', 689, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\Frank Official Trailer #1 (2014).mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\55.jpg', N'95 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (57, N'Sắc Đẹp Ngàn Cân', 7, N'Hàn Quốc', N'Kim Yong-Hwa, ', 967, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\200 Pounds Beauty - Official Trailer [HD] - Hit Korean Comedy.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\56.jpg', N'116 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (120, N'Môi Hôn Ngọt Ngào', 3, N'Anh', N'Annabel Jankel', 235, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\moihocngotngao.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\4.jpg', N'308 p')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (1003, N'Captian America  "First Avenger"', 1, N'Mỹ', N'Joe Johnston', 526, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\marvel\captian america\Captain America- Kẻ báo thù đầu tiên-Captain America- The First Avenger (2011) [HD-Vietsub] (Xem Full).mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\cap1.jpg', N'Bối cảnh phim bắt đầu năm 1942, khi Mỹ đang tham gia Thế chiến II và cần tới những chiến binh can trường. Chàng trai Steve Rogers (Chris Evans) là một người như vậy, nhưng thể hình quá thấp bé khiến anh không thể đạt được ước mơ tòng quân. Cơ may đến với Rogers khi anh được chọn tham gia một thí nghiệm của chính phủ, giúp biến người thường trở thành siêu chiến binh.

Mọi việc diễn ra suôn sẻ, biến Rogers thành một người cao to vạm vỡ, đầu óc tiếp thu mọi kỹ năng chiến đấu nhanh và vẫn giữ được trái tim nhân hậu.Anh trở thành Captain America, biểu tượng của nước Mỹ kể từ đó. Đối thủ của anh là phe Phát-xít, với quái nhân Red Skull, kẻ không chỉ quyền năng mà còn rất tàn ác.')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (1004, N'Pirates of the Caribbean: Dead Man''s Chest - 2006', 1, N'Mỹ', N' Gore Verbinski', 235, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\caribbean\Cướp biển vùng Caribbe (Phần 2)- Chiếc rương tử thần-Pirates of the Caribbean- Dead Man''s Chest (2006) [HD-Vietsub] (Xem Full).mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\caribean2.jpg', N'Cuối cùng sau nhiều nỗ lực Jack Sparrow đã chiếm lại đuợc con tàu huyền thoại Ngọc Trai Đen. Tuy nhiên, để giành được Ngọc Trai Đen, Jack đã gây thù kết oán với Davy Jones (thuyền trưởng con tàu ma Flying Dutchman). Để chiến thắng Davy chỉ còn cách tìm được chiếc rương tử thần và Jack – Will – Elizabeth lại dấn thân vào cuộc phiêu lưu mới… Hình ảnh kì dị nhưng khá vui nhộn đã trở thành thương hiệu cho các phim do Walt Disney sản xuất. So với phần I phần II được lồng ghép thêm nhiều tình huống hài hước hơn. Các đại cảnh lớn được thiết kế công phu hoành tráng mang tới dấu ấn riêng.
')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (1005, N'Captian America 2 - The Winter Soldier', 1, N'Mỹ', N'Joe Russo, Anthony Russo', 3526, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\marvel\captian america\-Captain America 2- Chiến Binh Mùa Đông-Captain America 2- The Winter Soldier (2014) [HD-Vietsub].mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\cap 2.jpg', N'Bộ phim là câu chuyện tiếp nối bộ phim The Avengers, khi Steve Rogers phải tìm cách hòa nhập vào thế giới hiện đại và kết hợp với Natasha Romanoff/Black Widow để chiến đấu chống lại một kẻ thù nguy hiểm ở Washington, D.C. Sau cuộc chiến cùng đội The Avengers tại New York, Captain America (hay còn gọi là Steve Rogers) có một cuộc sống khá thầm lặng tại Washington và anh phải vật lộn để thích nghi với cuộc sông ở thế giới hiện đại. 

Tuy nhiên, khi một người bạn trong SHIELD bị rơi vào vòng nguy hiểm, anh đã bị kéo vào một âm mưu đen tối có thể phá hủy cả nhân loại. Cùng với Black Widow, anh phải ngăn cản âm mưu này đồng thời chiến đấu chống lại nhừng sát thủ chuyên nghiệp được cử tới để thủ tiêu mình. Cặp đôi Captain, Black Widow còn tranh thủ sự giúp đỡ từ người bạn mới, Falcon . Tuy nhiên,một kẻ thù vô cùng nguy hiểm và bí ẩn lúc này lại xuất hiện: The Winter Soldier (Chiến binh mùa Đông)')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (1006, N'Captian America 3  - Civil War', 1, N'Mỹ', N'Joe Russo, Anthony Russo', 4526, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\marvel\captian america\PhimMoi.Net---Captain.America.Civil.War.2016.1080p.BluRay.X264-Vietsub-[1080p].mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\cap3.jpg', N'Captain America: Civil War là câu chuyện theo sau sự kiện Avengers: Age Of Ultron, các liên minh chính phủ trên toàn thế giới thông qua một hiệp ước được thiết lập để điều chỉnh hoạt động của tất cả siêu anh hùng. Điều này gây ra sự phân cực trong nội bộ nhóm Avengers, tạo nên hai phe gồm Iron Man và Captain America, gây ra một trận chiến sử thi giữa những người đồng đội.
')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (1007, N'Iron Man 1 ', 1, N'Mỹ', N'Jon Favreau', 5325, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\marvel\iron man\-Người sắt-Iron man (2008) [Full HD-Vietsub].mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\iron1.jpg', N'Tony Stark vừa là chủ tập đoàn công nghệ, vừa là một tay chơi kỳ dị. Trong chuyến thị sát Afghanistan, ông bị nhóm khủng bố bắt cóc. Chúng đòi Tony chế tạo thứ vũ khí hủy diệt để tấn công nước Mỹ.

Nhận ra sự thật phũ phàng rằng, những vũ khí do mình chế tạo đang quay ngược lại tấn công chính mình, Tony bắt tay chế tạo bộ giáp công nghệ cao. Tẩu thoát khỏi nơi giam cầm, Tony trở thành đại diện công lý dưới biệt danh Người sắt. Trong khi đó, người đồng sự trong tập đoàn Stark âm mưu lật đổ Tony. 

Bộ phim mở ra câu chuyện trong tương lai về nhóm siêu anh hùng Avenger khi tổ chức bí mật SHIELD bắt đầu lộ diện. ')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (1008, N'Iron Man 2 ', 1, N'Mỹ', N'Jon Favreau', 5325, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\marvel\iron man\-Người sắt 2-Iron man 2 (2010) [Full HD-Vietsub].mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\iron2.jpg', N'Tony Stark tự hé lộ thân phận Người sắt của mình cho công chúng và chìm trong hào quang danh vọng. Một kẻ lạ mặt xuất hiện tấn công anh trên đường đua Monte Carlo. Tony bị hiện tượng nhiễm trùng máu đe dọa mạng sống, còn tên sát thủ kia bắt tay với đối thủ của tập đoàn Stark hòng thôn tính Tony.

Phần 2 của Người sắt là lần đầu tiên trợ thủ Warmachine xuất hiện. Phim cũng tiết lộ những bí mật về cha của Tony, Howard Stark, trước khi dẫn dắt câu chuyện sang nhân vật Captain America, đồng đội tương lai của Người sắt tại tổ chức SHIELD. 
')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (1009, N'Iron Man 3 ', 1, N'Mỹ', N'Shane Black', 5325, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\marvel\iron man\Người Sắt 3-Iron Man 3 (2013) [Full HD-Vietsub+Thuyết minh] (Xem Full).mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\iron3.jpg', N'Từ sau những sự kiện và những trận chiến đầy ám ảnh trong The Avengers, Tony Stark quay về ở ẩn trong căn biệt thự sang trọng của mình, tạm thời chờ đợi trong tư cách một tỷ phú giàu có được yêu mến và gác danh phận siêu anh hùng sang một bên.

Tuy nhiên, những hiểm họa mới lại tiếp tục xuất hiện dưới bóng ma bao trùm của một quái nhân, đồng thời cũng là một thiên tài về công nghệ - The Mandarin. Người bạn thân trong lực lượng quân đội Hoa Kỳ của Tony - James Rhodes cần tới sự giúp đỡ của anh và những bộ giáp siêu việt.

Mọi chuyện không hề dễ dàng như Tony và James tưởng tượng: dưới sức mạnh thần bí của mười chiếc nhẫn vũ trụ, The Mandarin đã đánh bại "Người Sắt", đồng thời khiến siêu anh hùng - tỷ phú trở thành kẻ mất trí nhớ...')
INSERT [dbo].[VIDEO] ([IDVideo], [TenVideo], [IDTL], [QuocGia], [DaoDien], [LuotXem], [LinkVideo], [LinkPoster], [TomTat]) VALUES (1010, N'Thor 2 - The Dark World (2013)', 1, N'Mỹ', N' Alan Taylor', 5325, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\marvel\Thần Sấm 2- Thế Giới Bóng Tối-Thor 2- The Dark World (2013) [HD-Vietsub] (Xem Full).mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\thor2.jpg', N'Thần Sấm 2 nói tiếp về quãng thời gian khi Thor trở thành vua xứ Asgard, lúc này anh phải đối mặt với một kẻ thù vô cùng nguy hiểm và mạnh mẽ, đó là The Dark Elves. Hắn thậm chí còn mạnh hơn cả Odin. Trong tình thế vô cùng nguy cấp, Thor đành phải nhờ đến Loki. Cả hai gác bỏ hiềm khích cùng nhau vượt qua một thế giới đen tối và vô cùng lạnh lẽo, nơi được gọi là The Dark Wold.')
SET IDENTITY_INSERT [dbo].[VIDEO] OFF
SET IDENTITY_INSERT [dbo].[YEUTHICH] ON 

INSERT [dbo].[YEUTHICH] ([IDYT], [LinkVideo], [LinkPoster], [TenND], [TenVideo], [QuocGia], [DaoDien], [LuotXem], [TomTat]) VALUES (3, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\dr. strange\-Phù Thủy Tối Thượng-Doctor Strange (2016) [Full-Vietsub].mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\doctorstrange.jpg', N'staff', NULL, NULL, NULL, 13, NULL)
INSERT [dbo].[YEUTHICH] ([IDYT], [LinkVideo], [LinkPoster], [TenND], [TenVideo], [QuocGia], [DaoDien], [LuotXem], [TomTat]) VALUES (4, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\fbawtft\Sinh Vật Huyền Bí và Nơi Tìm Ra Chúng-Fantastic Beasts and Where to Find Them (2016) [Full HD-Vietsub] (Xem Full).mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\fbawtoft.jpg', N'staff', NULL, NULL, NULL, 12, NULL)
INSERT [dbo].[YEUTHICH] ([IDYT], [LinkVideo], [LinkPoster], [TenND], [TenVideo], [QuocGia], [DaoDien], [LuotXem], [TomTat]) VALUES (7, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\marvel\captian america\PhimMoi.Net---Captain.America.Civil.War.2016.1080p.BluRay.X264-Vietsub-[1080p].mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\cap3.jpg', N'staff', NULL, NULL, NULL, 21, NULL)
INSERT [dbo].[YEUTHICH] ([IDYT], [LinkVideo], [LinkPoster], [TenND], [TenVideo], [QuocGia], [DaoDien], [LuotXem], [TomTat]) VALUES (9, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\khunghiduongsacsong.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\32.jpg', N'staff', NULL, NULL, NULL, 45, NULL)
INSERT [dbo].[YEUTHICH] ([IDYT], [LinkVideo], [LinkPoster], [TenND], [TenVideo], [QuocGia], [DaoDien], [LuotXem], [TomTat]) VALUES (11, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\pokemon.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\27.jpg', N'staff', N'Pokemon: Detective Pikachu', N'Mỹ, Nhật, Canada', N'Rob Letterman, ', 233, N'304p')
INSERT [dbo].[YEUTHICH] ([IDYT], [LinkVideo], [LinkPoster], [TenND], [TenVideo], [QuocGia], [DaoDien], [LuotXem], [TomTat]) VALUES (12, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\luulacdiacau.mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\26.jpg', N'staff', N'Lưu lạc Địa Cầu', N'Trung Quốc', N'Frant Gwo,', 322, N'325 p')
INSERT [dbo].[YEUTHICH] ([IDYT], [LinkVideo], [LinkPoster], [TenND], [TenVideo], [QuocGia], [DaoDien], [LuotXem], [TomTat]) VALUES (13, N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\video\Norm of the North Official .mp4', N'C:\Users\Uyen\Desktop\QuanLyCungCapVideo\QuanLyCungCapVideo\image\36.jpg', N'staff', N'Đầu Gấu Bắc Cực', N'Mỹ', N'Richard Finn, Tim Maltby, ', 644, N'92 p')
SET IDENTITY_INSERT [dbo].[YEUTHICH] OFF
ALTER TABLE [dbo].[VIDEO]  WITH CHECK ADD  CONSTRAINT [FK_VD_TL] FOREIGN KEY([IDTL])
REFERENCES [dbo].[THELOAI] ([IDTL])
GO
ALTER TABLE [dbo].[VIDEO] CHECK CONSTRAINT [FK_VD_TL]
GO
USE [master]
GO
ALTER DATABASE [QuanLyCungCapVideo] SET  READ_WRITE 
GO
