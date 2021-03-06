USE [Data_HoTroGiaoVienCN]
GO
/****** Object:  Schema [Personal]    Script Date: 29/03/2021 11:01:24 ******/
CREATE SCHEMA [Personal]
GO
/****** Object:  Table [Personal].[Class]    Script Date: 29/03/2021 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Personal].[Class](
	[ClassID] [int] IDENTITY(1,1) NOT NULL,
	[TeacherID] [varchar](9) NOT NULL,
	[ClassName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Personal].[Comment]    Script Date: 29/03/2021 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Personal].[Comment](
	[StudentID] [varchar](9) NOT NULL,
	[TeacherID] [varchar](9) NOT NULL,
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[CommentTypeID] [int] NULL,
	[CommentType] [nvarchar](100) NULL,
	[Contents] [ntext] NULL,
	[CreateDate] [datetime] NULL,
	[ModifiesDate] [datetime] NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[TeacherID] ASC,
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Personal].[CommentType]    Script Date: 29/03/2021 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Personal].[CommentType](
	[CommentTypeID] [int] IDENTITY(1,1) NOT NULL,
	[CommentTypeName] [nvarchar](100) NULL,
	[Description] [nvarchar](100) NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_CommentType] PRIMARY KEY CLUSTERED 
(
	[CommentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Personal].[Familes]    Script Date: 29/03/2021 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Personal].[Familes](
	[FamilyID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [varchar](9) NOT NULL,
	[FamilyType] [nvarchar](100) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Phone] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[Zalo] [varchar](50) NULL,
	[Facebook] [varchar](50) NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Familes] PRIMARY KEY CLUSTERED 
(
	[FamilyID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Personal].[Household]    Script Date: 29/03/2021 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Personal].[Household](
	[StudentID] [varchar](9) NOT NULL,
	[HouseHoldID] [int] NOT NULL,
	[HouseholdType] [smallint] NULL,
	[DiaChiThuongTru] [nvarchar](200) NULL,
	[DiaChiTamTru] [nvarchar](200) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[Phone] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[ModifiesDate] [datetime] NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Household] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[HouseHoldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Personal].[Mark]    Script Date: 29/03/2021 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Personal].[Mark](
	[StudentID] [varchar](9) NOT NULL,
	[Semester] [int] NOT NULL,
	[ShoolYear] [varchar](20) NOT NULL,
	[Diem] [float] NULL,
	[HanhKiem] [float] NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_KetQuaHocTap] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[Semester] ASC,
	[ShoolYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Personal].[Student]    Script Date: 29/03/2021 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Personal].[Student](
	[StudentID] [varchar](9) NOT NULL,
	[ClassID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Sex] [bit] NOT NULL,
	[BirthDay] [date] NULL,
	[PhoneOne] [varchar](15) NOT NULL,
	[PhoneTwo] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[Zalo] [varchar](50) NULL,
	[FaceBook] [varchar](50) NULL,
	[Addderss] [varchar](100) NULL,
	[Status] [int] NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Personal].[Teacher]    Script Date: 29/03/2021 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Personal].[Teacher](
	[TeacherID] [varchar](9) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](30) NULL,
	[Phone] [varchar](15) NULL,
	[Zalo] [varchar](50) NULL,
	[Facebook] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[Email] [varchar](50) NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [Personal].[Class] ADD  CONSTRAINT [DF_Class_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [Personal].[Comment] ADD  CONSTRAINT [DF_Comment_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [Personal].[CommentType] ADD  CONSTRAINT [DF_CommentType_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [Personal].[Familes] ADD  CONSTRAINT [DF_Familes_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [Personal].[Household] ADD  CONSTRAINT [DF_Household_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [Personal].[Mark] ADD  CONSTRAINT [DF_KetQuaHocTap_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [Personal].[Student] ADD  CONSTRAINT [DF_Student_Sex]  DEFAULT ((0)) FOR [Sex]
GO
ALTER TABLE [Personal].[Student] ADD  CONSTRAINT [DF_Student_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [Personal].[Teacher] ADD  CONSTRAINT [DF_Teacher_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [Personal].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [Personal].[Teacher] ([TeacherID])
GO
ALTER TABLE [Personal].[Class] CHECK CONSTRAINT [FK_Class_Teacher]
GO
ALTER TABLE [Personal].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_CommentType] FOREIGN KEY([CommentTypeID])
REFERENCES [Personal].[CommentType] ([CommentTypeID])
GO
ALTER TABLE [Personal].[Comment] CHECK CONSTRAINT [FK_Comment_CommentType]
GO
ALTER TABLE [Personal].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Student] FOREIGN KEY([StudentID])
REFERENCES [Personal].[Student] ([StudentID])
GO
ALTER TABLE [Personal].[Comment] CHECK CONSTRAINT [FK_Comment_Student]
GO
ALTER TABLE [Personal].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [Personal].[Teacher] ([TeacherID])
GO
ALTER TABLE [Personal].[Comment] CHECK CONSTRAINT [FK_Comment_Teacher]
GO
ALTER TABLE [Personal].[Familes]  WITH CHECK ADD  CONSTRAINT [FK_Familes_Student] FOREIGN KEY([StudentID])
REFERENCES [Personal].[Student] ([StudentID])
GO
ALTER TABLE [Personal].[Familes] CHECK CONSTRAINT [FK_Familes_Student]
GO
ALTER TABLE [Personal].[Household]  WITH CHECK ADD  CONSTRAINT [FK_Household_Student] FOREIGN KEY([StudentID])
REFERENCES [Personal].[Student] ([StudentID])
GO
ALTER TABLE [Personal].[Household] CHECK CONSTRAINT [FK_Household_Student]
GO
ALTER TABLE [Personal].[Mark]  WITH CHECK ADD  CONSTRAINT [FK_KetQuaHocTap_Student] FOREIGN KEY([StudentID])
REFERENCES [Personal].[Student] ([StudentID])
GO
ALTER TABLE [Personal].[Mark] CHECK CONSTRAINT [FK_KetQuaHocTap_Student]
GO
ALTER TABLE [Personal].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Class] FOREIGN KEY([ClassID])
REFERENCES [Personal].[Class] ([ClassID])
GO
ALTER TABLE [Personal].[Student] CHECK CONSTRAINT [FK_Student_Class]
GO
