CREATE DATABASE [StudentRequest] 
GO
USE [StudentRequest]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](max) NULL,
	[password] [varchar](max) NULL,
	[accountname] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Request](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[date_created] [date] NULL,
	[date_closed] [date] NULL,
	[status] [int] NULL,
	[department_id] [int] NULL,
	[detail] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Student_Request](
	[student_id] [varchar](50) NOT NULL,
	[student_name] [varchar](max) NULL,
	[request_id] [int] NULL,
	[solution_school] [varchar](max) NULL,
	[request_content] [varchar](max) NULL,
	[solved_by] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [Account] ON 
GO
INSERT [Account] ([id], [username], [password], [accountname]) VALUES (1, N'admin', N'admin', N'Duc Long')
GO
INSERT [Account] ([id], [username], [password], [accountname]) VALUES (2, N'block', N'block', N'Hoang Minh')
GO
SET IDENTITY_INSERT [Account] OFF
GO
SET IDENTITY_INSERT [Department] ON 
GO
INSERT [Department] ([id], [DepartmentName]) VALUES (1, N'Academic Department')
GO
INSERT [Department] ([id], [DepartmentName]) VALUES (2, N'FPT Polytechnic')
GO
SET IDENTITY_INSERT [Department] OFF
GO
SET IDENTITY_INSERT [Request] ON 
GO
INSERT [Request] ([id], [title], [date_created], [date_closed], [status], [department_id], [detail]) VALUES (1, N'phuc khao diem pe', CAST(N'2021-05-10' AS Date), CAST(N'2021-05-11' AS Date), 0, 1, 1)
GO
INSERT [Request] ([id], [title], [date_created], [date_closed], [status], [department_id], [detail]) VALUES (2, N'de nghi cham lai diem fe', CAST(N'2021-10-10' AS Date), CAST(N'2021-05-11' AS Date), 1, 1, 1)
GO
INSERT [Request] ([id], [title], [date_created], [date_closed], [status], [department_id], [detail]) VALUES (3, N'de nghi giam hoc phi', CAST(N'2021-05-05' AS Date), CAST(N'2021-07-05' AS Date), 0, 2, 1)
GO
INSERT [Request] ([id], [title], [date_created], [date_closed], [status], [department_id], [detail]) VALUES (4, N'de nghi khong trung dung ktx', CAST(N'2021-10-05' AS Date), CAST(N'2021-05-11' AS Date), 0, 1, 1)
GO
INSERT [Request] ([id], [title], [date_created], [date_closed], [status], [department_id], [detail]) VALUES (5, N'de nghi mien hoc phi hoc lai', CAST(N'2021-05-10' AS Date), CAST(N'2021-05-12' AS Date), 0, 1, 1)
GO
INSERT [Request] ([id], [title], [date_created], [date_closed], [status], [department_id], [detail]) VALUES (6, N'de nghi pass mon', CAST(N'2021-08-08' AS Date), CAST(N'2021-05-12' AS Date), 1, 1, 1)
GO
INSERT [Request] ([id], [title], [date_created], [date_closed], [status], [department_id], [detail]) VALUES (7, N'de nghi hoan tien ktx', CAST(N'2021-11-05' AS Date), CAST(N'2021-05-11' AS Date), 0, 2, 1)
GO
INSERT [Request] ([id], [title], [date_created], [date_closed], [status], [department_id], [detail]) VALUES (8, N'de nghi mien hoc phi hoc lai 1', CAST(N'2021-05-11' AS Date), CAST(N'2021-05-11' AS Date), 0, 2, 1)
GO
INSERT [Request] ([id], [title], [date_created], [date_closed], [status], [department_id], [detail]) VALUES (9, N'de nghi hoc lai c#', CAST(N'2021-05-12' AS Date), NULL, 2, 1, 0)
GO
INSERT [Request] ([id], [title], [date_created], [date_closed], [status], [department_id], [detail]) VALUES (10, N'de nghi gi do', CAST(N'2021-05-12' AS Date), NULL, 2, 2, 0)
GO
INSERT [Request] ([id], [title], [date_created], [date_closed], [status], [department_id], [detail]) VALUES (11, N'alo 123 ', CAST(N'2021-05-12' AS Date), NULL, 2, 1, 0)
GO
SET IDENTITY_INSERT [Request] OFF
GO
INSERT [Student_Request] ([student_id], [student_name], [request_id], [solution_school], [request_content], [solved_by]) VALUES (N'HE140529', N'Duc Long', 1, N'diem van nhu cu
khong thay doi                        
                                            ', N'em muon cham lai diem pe', N'Hoang Minh')
GO
INSERT [Student_Request] ([student_id], [student_name], [request_id], [solution_school], [request_content], [solved_by]) VALUES (N'SE05123', N'Hoang Ha', 2, N'ok em', N'em muon kiem tra LOC mon lab', N'Hoang Minh')
GO
INSERT [Student_Request] ([student_id], [student_name], [request_id], [solution_school], [request_content], [solved_by]) VALUES (N'HS140563', N'Tuan Minh', 3, NULL, N'em muon cai gi do', NULL)
GO
INSERT [Student_Request] ([student_id], [student_name], [request_id], [solution_school], [request_content], [solved_by]) VALUES (N'HA123456', N'Cong Tuan', 5, N'khong chap nhan', N'em khong muon gi ca, gui cho vui', N'Hoang Minh')
GO
INSERT [Student_Request] ([student_id], [student_name], [request_id], [solution_school], [request_content], [solved_by]) VALUES (N'HE111111', N'Hai Hanh', 7, N'cut', N'em muon duoc hoc bong', N'Hoang Minh')
GO
INSERT [Student_Request] ([student_id], [student_name], [request_id], [solution_school], [request_content], [solved_by]) VALUES (N'BA123412', N'Hoang Anh', 8, N'khong bao gio ok', N'con cai nit, con dung cai nit', N'Hoang Minh')
GO
INSERT [Student_Request] ([student_id], [student_name], [request_id], [solution_school], [request_content], [solved_by]) VALUES (N'HH098888', N'minh duc', 4, N'bo m thich trung dung', N'thay huan giao duc cong an', N'Hoang Minh')
GO
INSERT [Student_Request] ([student_id], [student_name], [request_id], [solution_school], [request_content], [solved_by]) VALUES (N'HE999999', N'long duc', 6, N'chap nhan', N'co cai nit', N'Hoang Minh')
GO
USE [master]
GO
ALTER DATABASE [StudentRequest] SET  READ_WRITE 
GO
