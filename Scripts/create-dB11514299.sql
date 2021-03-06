
USE [ageDB]
GO
/****** Object:  Table [dbo].[Flowchart118]    Script Date: 01/04/2019 7:05:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dB11514299](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TermNo] [varchar](50) NULL,
	[Course] [varchar](50) NULL,
	[CourseTitle] [varchar](300) NULL,
	[Passed] [varchar](50) NULL,
	[Units] [varchar](50) NULL,
	[SoftReq] [varchar](50) NULL,
	[CoReq] [varchar](50) NULL,
	[HardReq] [varchar](50) NULL,
 CONSTRAINT [PK_[dB11514299] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
