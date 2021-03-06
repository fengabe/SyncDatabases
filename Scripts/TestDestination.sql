USE [TestDestination]
GO
/****** Object:  Table [dbo].[T_Table6]    Script Date: 02/01/2013 21:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Table6](
	[SourceColumn] [varchar](10) NULL,
	[Column15] [varchar](10) NULL,
	[Column25] [varchar](10) NULL,
	[Column35] [varchar](10) NULL,
	[Column45] [varchar](10) NULL,
	[Column55] [varchar](10) NULL,
	[x_Column65] [varchar](10) NULL,
	[Column65] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Table5]    Script Date: 02/01/2013 21:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Table5](
	[x_Column14] [varchar](10) NULL,
	[x_Column24] [varchar](10) NULL,
	[x_Column34] [varchar](10) NULL,
	[x_Column44] [varchar](10) NULL,
	[x_Column54] [varchar](10) NULL,
	[x_Column64] [varchar](10) NULL,
	[Column14] [numeric](10, 2) NULL,
	[Column24] [decimal](10, 2) NULL,
	[Column34] [int] NULL,
	[Column44] [datetime] NULL,
	[Column54] [char](10) NULL,
	[Column64] [bit] NULL,
	[SourceColumn] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Table4]    Script Date: 02/01/2013 21:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Table4](
	[Column13] [varchar](10) NULL,
	[Column23] [varchar](10) NULL,
	[Column33] [varchar](10) NULL,
	[Column43] [varchar](10) NULL,
	[Column53] [varchar](10) NULL,
	[Column63] [varchar](10) NULL,
	[SourceColumn] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Table3]    Script Date: 02/01/2013 21:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Table3](
	[Column12] [varchar](10) NULL,
	[Column22] [varchar](10) NULL,
	[Column32] [varchar](10) NULL,
	[Column42] [varchar](10) NULL,
	[Column52] [varchar](10) NULL,
	[Column62] [varchar](10) NULL,
	[SourceColumn] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Table2]    Script Date: 02/01/2013 21:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Table2](
	[Column11] [varchar](10) NULL,
	[Column21] [varchar](10) NULL,
	[Column31] [varchar](10) NULL,
	[Column41] [varchar](10) NULL,
	[Column51] [varchar](10) NULL,
	[Column61] [varchar](10) NULL,
	[SourceColumn] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Table1]    Script Date: 02/01/2013 21:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Table1](
	[Column1] [varchar](10) NULL,
	[Column2] [varchar](10) NULL,
	[Column3] [varchar](10) NULL,
	[Column4] [varchar](10) NULL,
	[Column5] [varchar](10) NULL,
	[Column6] [varchar](10) NULL,
	[Column7] [varchar](10) NULL,
	[SourceColumn] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_TableCompareChangeHistory]    Script Date: 02/01/2013 21:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_TableCompareChangeHistory](
	[SchemaName] [varchar](100) NULL,
	[TableName] [varchar](100) NULL,
	[AlteredColumnName] [varchar](100) NULL,
	[AlterScript] [varchar](max) NULL,
	[AlterDate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_TableCompare]    Script Date: 02/01/2013 21:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_TableCompare](
	[TableSchema] [varchar](100) NULL,
	[TableName] [varchar](100) NULL,
	[TableSyncStatus] [bit] NULL,
	[LastUpdated] [datetime] NULL,
	[EnableSync] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [AlterDate_Default]    Script Date: 02/01/2013 21:41:11 ******/
ALTER TABLE [dbo].[_TableCompareChangeHistory] ADD  CONSTRAINT [AlterDate_Default]  DEFAULT (getdate()) FOR [AlterDate]
GO
