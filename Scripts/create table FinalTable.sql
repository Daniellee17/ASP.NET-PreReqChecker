USE [ageDB]
GO

/****** Object:  Table [dbo].[FinalTable]    Script Date: 08/04/2019 4:55:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[FinalTable](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[IDNumber] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Username] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](20) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
	[Type] [varchar](50) NULL,
	[Verified] [varchar](50) NULL,
 CONSTRAINT [PK_FinalTable] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


