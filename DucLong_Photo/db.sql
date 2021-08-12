USE [DucLong_Photo]
GO
CREATE TABLE [dbo].[Contact](
	[Address] [varchar](max) NULL,
	[City] [varchar](max) NULL,
	[Country] [varchar](max) NULL,
	[Tel] [varchar](max) NULL,
	[Email] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 5/19/2021 11:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GalleryName] [varchar](max) NULL,
	[Picture] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Gallery] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gallery_Image]    Script Date: 5/19/2021 11:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery_Image](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GalleryID] [int] NULL,
	[Image] [varchar](max) NULL,
 CONSTRAINT [PK_Gallery_Image] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Introduction]    Script Date: 5/19/2021 11:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Introduction](
	[IntroImage] [varchar](max) NULL,
	[IntroCaption] [varchar](max) NULL,
	[About] [varchar](max) NULL,
	[ViewPage] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Contact] ([Address], [City], [Country], [Tel], [Email]) VALUES (N'Yen Lap, Phu Tho', N'Phu Tho', N'Viet Nam', N'0819853853', N'longprolaanhok@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Gallery] ON 
GO
INSERT [dbo].[Gallery] ([ID], [GalleryName], [Picture], [Description]) VALUES (1, N'Gallery 1', N'1.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
')
GO
INSERT [dbo].[Gallery] ([ID], [GalleryName], [Picture], [Description]) VALUES (2, N'Gallery 2', N'2.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
')
GO
INSERT [dbo].[Gallery] ([ID], [GalleryName], [Picture], [Description]) VALUES (3, N'Gallery 3', N'3.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
')
GO
INSERT [dbo].[Gallery] ([ID], [GalleryName], [Picture], [Description]) VALUES (4, N'Gallery 4', N'4.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
')
GO
INSERT [dbo].[Gallery] ([ID], [GalleryName], [Picture], [Description]) VALUES (5, N'Gallery 5', N'5.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
')
GO
INSERT [dbo].[Gallery] ([ID], [GalleryName], [Picture], [Description]) VALUES (6, N'Gallery 6', N'6.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
')
GO
INSERT [dbo].[Gallery] ([ID], [GalleryName], [Picture], [Description]) VALUES (7, N'Gallery 7', N'7.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
')
GO
INSERT [dbo].[Gallery] ([ID], [GalleryName], [Picture], [Description]) VALUES (8, N'Gallery 8', N'8.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
')
GO
INSERT [dbo].[Gallery] ([ID], [GalleryName], [Picture], [Description]) VALUES (9, N'Gallery 9', N'5.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
')
GO
SET IDENTITY_INSERT [dbo].[Gallery] OFF
GO
SET IDENTITY_INSERT [dbo].[Gallery_Image] ON 
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (1, 3, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (2, 5, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (3, 5, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (4, 2, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (5, 1, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (6, 1, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (7, 5, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (8, 5, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (9, 2, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (10, 5, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (11, 2, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (12, 1, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (13, 5, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (14, 2, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (15, 4, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (16, 5, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (17, 3, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (18, 2, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (19, 3, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (20, 2, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (21, 2, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (22, 3, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (23, 1, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (24, 4, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (25, 1, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (26, 4, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (27, 5, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (28, 3, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (29, 2, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (30, 2, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (31, 3, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (32, 5, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (33, 3, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (34, 4, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (35, 5, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (36, 3, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (37, 5, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (38, 1, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (39, 1, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (40, 3, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (41, 3, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (42, 4, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (43, 2, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (44, 1, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (45, 5, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (46, 1, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (47, 3, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (48, 3, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (49, 2, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (50, 2, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (51, 2, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (52, 1, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (53, 3, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (54, 3, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (55, 4, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (56, 2, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (57, 4, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (58, 5, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (59, 5, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (60, 5, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (61, 3, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (62, 4, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (63, 2, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (64, 2, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (65, 3, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (66, 2, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (67, 5, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (68, 1, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (69, 4, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (70, 2, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (71, 1, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (72, 2, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (73, 2, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (74, 2, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (75, 1, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (76, 3, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (77, 5, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (78, 2, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (79, 5, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (80, 2, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (81, 3, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (82, 1, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (83, 4, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (84, 3, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (85, 4, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (86, 3, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (87, 4, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (88, 1, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (89, 3, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (90, 5, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (91, 5, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (92, 2, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (93, 3, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (94, 5, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (95, 5, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (96, 4, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (97, 2, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (98, 1, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (99, 5, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (100, 3, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (101, 6, N'http://dummyimage.com/360x239.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (102, 6, N'http://dummyimage.com/360x239.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (103, 6, N'http://dummyimage.com/360x239.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (104, 7, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (105, 7, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (106, 7, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (107, 7, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (108, 8, N'http://dummyimage.com/360x240.png/ff4444/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (109, 8, N'http://dummyimage.com/360x240.png/5fa2dd/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (110, 8, N'http://dummyimage.com/360x240.png/dddddd/000000')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (111, 8, N'http://dummyimage.com/360x240.png/cc0000/ffffff')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (113, 9, N'http://cdn.simplesite.com/i/52/62/284852682250740306/i284852689410739443._szw1280h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (114, 9, N'http://cdn.simplesite.com/i/52/62/284852682250740306/i284852689410739336._szw480h360_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (115, 9, N'http://cdn.simplesite.com/i/52/62/284852682250740306/i284852689410739338._szw480h360_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (116, 9, N'http://cdn.simplesite.com/i/52/62/284852682250740306/i284852689410739339._szw480h360_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (117, 9, N'http://cdn.simplesite.com/i/52/62/284852682250740306/i284852689410739343._szw480h360_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (118, 9, N'http://cdn.simplesite.com/i/52/62/284852682250740306/i284852689410739585._szw480h360_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (119, 9, N'http://cdn.simplesite.com/i/52/62/284852682250740306/i284852689425710823._szw480h360_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (120, 9, N'http://cdn.simplesite.com/i/52/62/284852682250740306/i284852689425710847._szw480h360_.jpg')
GO
SET IDENTITY_INSERT [dbo].[Gallery_Image] OFF
GO
INSERT [dbo].[Introduction] ([IntroImage], [IntroCaption], [About], [ViewPage]) VALUES (N'intro_image.jpg', N'Lorem ipsum dolor sit amet
 hehe', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim
', 100)
GO
ALTER TABLE [dbo].[Gallery_Image]  WITH CHECK ADD  CONSTRAINT [FK_Gallery_Image_Gallery] FOREIGN KEY([GalleryID])
REFERENCES [dbo].[Gallery] ([ID])
GO
ALTER TABLE [dbo].[Gallery_Image] CHECK CONSTRAINT [FK_Gallery_Image_Gallery]
GO
USE [master]
GO
ALTER DATABASE [DucLong_Photo] SET  READ_WRITE 
GO
