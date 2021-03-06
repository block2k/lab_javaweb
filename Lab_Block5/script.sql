USE [LabWeb_Block5]
GO
/****** Object:  Table [dbo].[Introduction]    Script Date: 12/8/2021 2:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Introduction](
	[ViewPage] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/8/2021 2:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Image] [nvarchar](500) NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Introduction] ([ViewPage]) VALUES (10)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [Image], [Price]) VALUES (1, N'Laptop Acer 5', N'https://anphat.com.vn/media/product/38372_7.jpg', 45000000)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Price]) VALUES (2, N'Laptop Asus ROG Strix', N'https://anphat.com.vn/media/product/38226_nbas0972.jpg', 27690000)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Price]) VALUES (3, N'Laptop ASUS TUF Gaming', N'https://anphat.com.vn/media/product/38389_laptop_asus_tuf_gaming_f15_fx506hc_hn001t.jpg', 27990000)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Price]) VALUES (4, N'Laptop Lenovo Legion', N'https://anphat.com.vn/media/product/34518_nbln0382.jpg', 25999000)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Price]) VALUES (5, N'Máy in laser đen trắng', N'https://anphat.com.vn/media/product/20375_canon_lbp_6230_dn_400x400_imae8vvyzrnznwgt.jpeg', 4189000)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
