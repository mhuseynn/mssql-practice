USE [master]
GO
/****** Object:  Database [AcademyDB]    Script Date: 12/23/2023 7:40:43 PM ******/
CREATE DATABASE [AcademyDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AcademyDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AcademyDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AcademyDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AcademyDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AcademyDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AcademyDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AcademyDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AcademyDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AcademyDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AcademyDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AcademyDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [AcademyDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AcademyDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AcademyDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AcademyDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AcademyDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AcademyDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AcademyDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AcademyDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AcademyDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AcademyDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AcademyDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AcademyDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AcademyDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AcademyDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AcademyDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AcademyDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AcademyDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AcademyDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AcademyDB] SET  MULTI_USER 
GO
ALTER DATABASE [AcademyDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AcademyDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AcademyDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AcademyDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AcademyDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AcademyDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AcademyDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [AcademyDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [AcademyDB]
GO
/****** Object:  Table [dbo].[Chairs]    Script Date: 12/23/2023 7:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chairs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Financing] [money] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Chairs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 12/23/2023 7:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Faculties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 12/23/2023 7:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
	[Rating] [int] NOT NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacherss]    Script Date: 12/23/2023 7:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacherss](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](4000) NOT NULL,
	[Surname] [nchar](4000) NOT NULL,
	[EmploymentDate] [date] NOT NULL,
	[Premium] [money] NOT NULL,
	[Salary] [money] NOT NULL,
 CONSTRAINT [PK_Teacherss] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Chairs] ON 

INSERT [dbo].[Chairs] ([Id], [Financing], [Name]) VALUES (1, 0.0000, N'Chair1')
SET IDENTITY_INSERT [dbo].[Chairs] OFF
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year]) VALUES (1, N'None', 5, 1)
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacherss] ON 

INSERT [dbo].[Teacherss] ([Id], [Name], [Surname], [EmploymentDate], [Premium], [Salary]) VALUES (2, N'None', N'Nonee                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', CAST(N'2006-02-03' AS Date), 4.0000, 100.0000)
SET IDENTITY_INSERT [dbo].[Teacherss] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_Chairs_Name]    Script Date: 12/23/2023 7:40:44 PM ******/
ALTER TABLE [dbo].[Chairs] ADD  CONSTRAINT [UK_Chairs_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_Faculties_Name]    Script Date: 12/23/2023 7:40:44 PM ******/
ALTER TABLE [dbo].[Faculties] ADD  CONSTRAINT [UK_Faculties_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_Groups_Name]    Script Date: 12/23/2023 7:40:44 PM ******/
ALTER TABLE [dbo].[Groups] ADD  CONSTRAINT [UK_Groups_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Chairs] ADD  CONSTRAINT [DF_Chairs_Financing]  DEFAULT ((0)) FOR [Financing]
GO
ALTER TABLE [dbo].[Chairs] ADD  CONSTRAINT [DF_Chairs_Name]  DEFAULT (N'None') FOR [Name]
GO
ALTER TABLE [dbo].[Faculties] ADD  CONSTRAINT [DF_Faculties_Name]  DEFAULT (N'None') FOR [Name]
GO
ALTER TABLE [dbo].[Groups] ADD  CONSTRAINT [DF_Groups_Name]  DEFAULT (N'None') FOR [Name]
GO
ALTER TABLE [dbo].[Teacherss] ADD  CONSTRAINT [DF_Teacherss_Name]  DEFAULT (N'None') FOR [Name]
GO
ALTER TABLE [dbo].[Teacherss] ADD  CONSTRAINT [DF_Teacherss_Surname]  DEFAULT (N'Nonee') FOR [Surname]
GO
ALTER TABLE [dbo].[Teacherss] ADD  CONSTRAINT [DF_Teacherss_Premium]  DEFAULT ((0)) FOR [Premium]
GO
ALTER TABLE [dbo].[Chairs]  WITH CHECK ADD  CONSTRAINT [CK_Chairs_Financing] CHECK  (([Financing]>=(0)))
GO
ALTER TABLE [dbo].[Chairs] CHECK CONSTRAINT [CK_Chairs_Financing]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [CK_Groups_Rating] CHECK  (([Rating]>=(0) AND [Rating]<=(5)))
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [CK_Groups_Rating]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [CK_Groups_Year] CHECK  (([Year]>=(0) AND [Year]<=(5)))
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [CK_Groups_Year]
GO
ALTER TABLE [dbo].[Teacherss]  WITH CHECK ADD  CONSTRAINT [CK_Teachers_EmploymentDatee] CHECK  (([EmploymentDate]>'01-01-1990'))
GO
ALTER TABLE [dbo].[Teacherss] CHECK CONSTRAINT [CK_Teachers_EmploymentDatee]
GO
ALTER TABLE [dbo].[Teacherss]  WITH CHECK ADD  CONSTRAINT [CK_Teachers_Premiumm] CHECK  (([Premium]>(0)))
GO
ALTER TABLE [dbo].[Teacherss] CHECK CONSTRAINT [CK_Teachers_Premiumm]
GO
ALTER TABLE [dbo].[Teacherss]  WITH CHECK ADD  CONSTRAINT [CK_Teachers_Salaryy] CHECK  (([Salary]>(0)))
GO
ALTER TABLE [dbo].[Teacherss] CHECK CONSTRAINT [CK_Teachers_Salaryy]
GO
USE [master]
GO
ALTER DATABASE [AcademyDB] SET  READ_WRITE 
GO
