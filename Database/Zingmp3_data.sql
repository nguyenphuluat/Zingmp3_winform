USE [master]
GO
/****** Object:  Database [zingmp3_data]    Script Date: 12/13/2018 23:30:18 ******/
CREATE DATABASE [zingmp3_data] ON  PRIMARY 
( NAME = N'zingmp3_data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\zingmp3_data.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'zingmp3_data_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\zingmp3_data_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [zingmp3_data] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [zingmp3_data].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [zingmp3_data] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [zingmp3_data] SET ANSI_NULLS OFF
GO
ALTER DATABASE [zingmp3_data] SET ANSI_PADDING OFF
GO
ALTER DATABASE [zingmp3_data] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [zingmp3_data] SET ARITHABORT OFF
GO
ALTER DATABASE [zingmp3_data] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [zingmp3_data] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [zingmp3_data] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [zingmp3_data] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [zingmp3_data] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [zingmp3_data] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [zingmp3_data] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [zingmp3_data] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [zingmp3_data] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [zingmp3_data] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [zingmp3_data] SET  DISABLE_BROKER
GO
ALTER DATABASE [zingmp3_data] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [zingmp3_data] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [zingmp3_data] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [zingmp3_data] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [zingmp3_data] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [zingmp3_data] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [zingmp3_data] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [zingmp3_data] SET  READ_WRITE
GO
ALTER DATABASE [zingmp3_data] SET RECOVERY SIMPLE
GO
ALTER DATABASE [zingmp3_data] SET  MULTI_USER
GO
ALTER DATABASE [zingmp3_data] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [zingmp3_data] SET DB_CHAINING OFF
GO
USE [zingmp3_data]
GO
/****** Object:  Table [dbo].[tbluser]    Script Date: 12/13/2018 23:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbluser](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nchar](45) NOT NULL,
	[user_pass] [nchar](45) NOT NULL,
	[user_fullname] [nvarchar](50) NULL,
	[user_address] [nvarchar](50) NULL,
	[user_phone] [nchar](15) NULL,
 CONSTRAINT [PK_tbluser] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbluser] ON
INSERT [dbo].[tbluser] ([user_id], [user_name], [user_pass], [user_fullname], [user_address], [user_phone]) VALUES (1, N'admin                                        ', N'admin                                        ', N'Nguyễn Trọng Hải', N'Giao An, Giao Thủy, Nam Định', N'0975086498     ')
INSERT [dbo].[tbluser] ([user_id], [user_name], [user_pass], [user_fullname], [user_address], [user_phone]) VALUES (74, N'huyhq                                        ', N'huyhq                                        ', N'Hoàng Quang Huy', N'Hà Nội', N'1243           ')
INSERT [dbo].[tbluser] ([user_id], [user_name], [user_pass], [user_fullname], [user_address], [user_phone]) VALUES (75, N'truong                                       ', N'truong                                       ', N'Phan Quang Trường', N'Nam Định', N'080            ')
SET IDENTITY_INSERT [dbo].[tbluser] OFF
/****** Object:  Table [dbo].[tblsing]    Script Date: 12/13/2018 23:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblsing](
	[sing_id] [int] IDENTITY(1,1) NOT NULL,
	[sing_category_id] [int] NOT NULL,
	[sing_name] [nvarchar](50) NOT NULL,
	[sing_author] [nvarchar](50) NULL,
	[sing_singer] [nvarchar](50) NULL,
	[sing_listened] [int] NULL,
	[sing_created_date] [nchar](50) NULL,
	[sing_focus] [bit] NULL,
	[sing_content] [ntext] NULL,
	[sing_path_mp3] [nchar](100) NULL,
	[sing_time] [int] NULL,
	[sing_dowloaded] [bit] NULL,
	[sing_national] [bit] NULL,
 CONSTRAINT [PK_tblsing] PRIMARY KEY CLUSTERED 
(
	[sing_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblsing] ON
INSERT [dbo].[tblsing] ([sing_id], [sing_category_id], [sing_name], [sing_author], [sing_singer], [sing_listened], [sing_created_date], [sing_focus], [sing_content], [sing_path_mp3], [sing_time], [sing_dowloaded], [sing_national]) VALUES (181, 1, N'Bi-Mat-Khong-Ten-Bui-Anh-Tuan.mp3', N'Đang cập nhật', N'Đang cập nhật', 3, N'11/28/2018                                        ', 1, N'sadwdawd', N'..\..\..\..\Path_mp3\Bi-Mat-Khong-Ten-Bui-Anh-Tuan.mp3                                              ', 325, 1, 1)
INSERT [dbo].[tblsing] ([sing_id], [sing_category_id], [sing_name], [sing_author], [sing_singer], [sing_listened], [sing_created_date], [sing_focus], [sing_content], [sing_path_mp3], [sing_time], [sing_dowloaded], [sing_national]) VALUES (182, 13, N'Cang-Niu-Giu-Cang-De-Mat-Mr-Siro.mp3', N'Đang cập nhật', N'Đang cập nhật', 7, N'12/3/2018                                         ', 1, N'Đang cập nhật', N'..\..\..\..\Path_mp3\Cang-Niu-Giu-Cang-De-Mat-Mr-Siro.mp3                                           ', 296, 1, 1)
INSERT [dbo].[tblsing] ([sing_id], [sing_category_id], [sing_name], [sing_author], [sing_singer], [sing_listened], [sing_created_date], [sing_focus], [sing_content], [sing_path_mp3], [sing_time], [sing_dowloaded], [sing_national]) VALUES (183, 13, N'Chap-Nhan-Hoa-Minzy.mp3', N'Đang cập nhật', N'Đang cập nhật', 3, N'12/3/2018                                         ', 1, N'Đang cập nhật', N'..\..\..\..\Path_mp3\Chap-Nhan-Hoa-Minzy.mp3                                                        ', 247, 1, 1)
INSERT [dbo].[tblsing] ([sing_id], [sing_category_id], [sing_name], [sing_author], [sing_singer], [sing_listened], [sing_created_date], [sing_focus], [sing_content], [sing_path_mp3], [sing_time], [sing_dowloaded], [sing_national]) VALUES (184, 13, N'Mau-Nuoc-Mat-Nguyen-Tran-Trung-Quan.mp3', N'Đang cập nhật', N'Đang cập nhật', 0, N'12/3/2018                                         ', 1, N'Đang cập nhật', N'..\..\..\..\Path_mp3\Mau-Nuoc-Mat-Nguyen-Tran-Trung-Quan.mp3                                        ', 337, 1, 1)
INSERT [dbo].[tblsing] ([sing_id], [sing_category_id], [sing_name], [sing_author], [sing_singer], [sing_listened], [sing_created_date], [sing_focus], [sing_content], [sing_path_mp3], [sing_time], [sing_dowloaded], [sing_national]) VALUES (185, 5, N'Thang-Dien-JustaTee-Phuong-Ly.mp3', N'Đang cập nhật', N'Đang cập nhật', 1, N'12/3/2018                                         ', 0, N'Hải đẹp trai vkl', N'..\..\..\..\Path_mp3\Thang-Dien-JustaTee-Phuong-Ly.mp3                                              ', 235, 1, 1)
INSERT [dbo].[tblsing] ([sing_id], [sing_category_id], [sing_name], [sing_author], [sing_singer], [sing_listened], [sing_created_date], [sing_focus], [sing_content], [sing_path_mp3], [sing_time], [sing_dowloaded], [sing_national]) VALUES (186, 13, N'Vo-Tinh-Xesi-Hoaprox.mp3', N'Đang cập nhật', N'Đang cập nhật', 0, N'12/3/2018                                         ', 0, N'Đang cập nhật', N'..\..\..\..\Path_mp3\Vo-Tinh-Xesi-Hoaprox.mp3                                                       ', 273, 0, 1)
INSERT [dbo].[tblsing] ([sing_id], [sing_category_id], [sing_name], [sing_author], [sing_singer], [sing_listened], [sing_created_date], [sing_focus], [sing_content], [sing_path_mp3], [sing_time], [sing_dowloaded], [sing_national]) VALUES (187, 13, N'HongKong1Erro.mp3', N'Đang cập nhật', N'Đang cập nhật', 0, N'12/12/2018                                        ', 0, N'Đang cập nhật', N'..\..\..\..\Path_mp3\HongKong1Erro.mp3                                                              ', 290, 0, 1)
INSERT [dbo].[tblsing] ([sing_id], [sing_category_id], [sing_name], [sing_author], [sing_singer], [sing_listened], [sing_created_date], [sing_focus], [sing_content], [sing_path_mp3], [sing_time], [sing_dowloaded], [sing_national]) VALUES (188, 13, N'HongKongErrro.mp3', N'Đang cập nhật', N'Đang cập nhật', 2, N'12/7/2018                                         ', 1, N'Đang cập nhật', N'..\..\..\..\Path_mp3\HongKongErrro.mp3                                                              ', 290, 0, 1)
INSERT [dbo].[tblsing] ([sing_id], [sing_category_id], [sing_name], [sing_author], [sing_singer], [sing_listened], [sing_created_date], [sing_focus], [sing_content], [sing_path_mp3], [sing_time], [sing_dowloaded], [sing_national]) VALUES (189, 13, N'Mo-Ho-Bui-Anh-Tuan.mp3', N'Đang cập nhật', N'Đang cập nhật', 2, N'12/12/2018                                        ', 0, N'Đang cập nhật', N'..\..\..\..\Path_mp3\Mo-Ho-Bui-Anh-Tuan.mp3                                                         ', 260, 0, 1)
INSERT [dbo].[tblsing] ([sing_id], [sing_category_id], [sing_name], [sing_author], [sing_singer], [sing_listened], [sing_created_date], [sing_focus], [sing_content], [sing_path_mp3], [sing_time], [sing_dowloaded], [sing_national]) VALUES (190, 3, N'Bai-Thanh-Ca-Buon-Dam-Vinh-Hung.mp3', N'Đang cập nhật', N'Đang cập nhật', 0, N'11/28/2018                                        ', 0, N'Đang cập nhật', N'..\..\..\..\Path_mp3\Bai-Thanh-Ca-Buon-Dam-Vinh-Hung.mp3                                            ', 329, 0, 1)
SET IDENTITY_INSERT [dbo].[tblsing] OFF
/****** Object:  Table [dbo].[tblcategory]    Script Date: 12/13/2018 23:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblcategory](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblcategory] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblcategory] ON
INSERT [dbo].[tblcategory] ([category_id], [category_name]) VALUES (1, N'Ballad')
INSERT [dbo].[tblcategory] ([category_id], [category_name]) VALUES (3, N'Jazz')
INSERT [dbo].[tblcategory] ([category_id], [category_name]) VALUES (4, N'Bolero')
INSERT [dbo].[tblcategory] ([category_id], [category_name]) VALUES (5, N'Pop')
INSERT [dbo].[tblcategory] ([category_id], [category_name]) VALUES (6, N'Rock')
INSERT [dbo].[tblcategory] ([category_id], [category_name]) VALUES (7, N'R&B')
INSERT [dbo].[tblcategory] ([category_id], [category_name]) VALUES (8, N'Bluehỵ')
INSERT [dbo].[tblcategory] ([category_id], [category_name]) VALUES (12, N'Trịnh')
INSERT [dbo].[tblcategory] ([category_id], [category_name]) VALUES (13, N'Đang cập nhật')
INSERT [dbo].[tblcategory] ([category_id], [category_name]) VALUES (20, N'Trữ Tình')
SET IDENTITY_INSERT [dbo].[tblcategory] OFF
