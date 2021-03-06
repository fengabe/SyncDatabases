USE [master]
GO
/****** Object:  Database [TestSource]    Script Date: 02/01/2013 21:41:58 ******/
CREATE DATABASE [TestSource] ON  PRIMARY 
( NAME = N'TestSource', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQL2008R2\MSSQL\DATA\TestSource.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TestSource_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQL2008R2\MSSQL\DATA\TestSource_log.LDF' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TestSource] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TestSource].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TestSource] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [TestSource] SET ANSI_NULLS OFF
GO
ALTER DATABASE [TestSource] SET ANSI_PADDING OFF
GO
ALTER DATABASE [TestSource] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [TestSource] SET ARITHABORT OFF
GO
ALTER DATABASE [TestSource] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [TestSource] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [TestSource] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [TestSource] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [TestSource] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [TestSource] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [TestSource] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [TestSource] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [TestSource] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [TestSource] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [TestSource] SET  ENABLE_BROKER
GO
ALTER DATABASE [TestSource] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [TestSource] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [TestSource] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [TestSource] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [TestSource] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [TestSource] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [TestSource] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [TestSource] SET  READ_WRITE
GO
ALTER DATABASE [TestSource] SET RECOVERY FULL
GO
ALTER DATABASE [TestSource] SET  MULTI_USER
GO
ALTER DATABASE [TestSource] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [TestSource] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'TestSource', N'ON'
GO
USE [TestSource]
GO
/****** Object:  Table [dbo].[_TableCompare_ViewDefinition]    Script Date: 02/01/2013 21:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_TableCompare_ViewDefinition](
	[TableSchema] [varchar](100) NULL,
	[TableName] [varchar](100) NULL,
	[TableAlias] [varchar](10) NULL,
	[ViewName] [varchar](100) NULL,
	[JoinCondition] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table6]    Script Date: 02/01/2013 21:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table6](
	[Column15] [varchar](10) NULL,
	[Column25] [varchar](10) NULL,
	[Column35] [varchar](10) NULL,
	[Column45] [varchar](10) NULL,
	[Column55] [varchar](10) NULL,
	[Column65] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table5]    Script Date: 02/01/2013 21:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table5](
	[Column14] [numeric](10, 2) NULL,
	[Column24] [decimal](10, 2) NULL,
	[Column34] [int] NULL,
	[Column44] [datetime] NULL,
	[Column54] [char](10) NULL,
	[Column64] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table4]    Script Date: 02/01/2013 21:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table4](
	[Column13] [varchar](10) NULL,
	[Column23] [varchar](10) NULL,
	[Column33] [varchar](10) NULL,
	[Column43] [varchar](10) NULL,
	[Column53] [varchar](10) NULL,
	[Column63] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table3]    Script Date: 02/01/2013 21:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table3](
	[Column12] [varchar](10) NULL,
	[Column22] [varchar](10) NULL,
	[Column32] [varchar](10) NULL,
	[Column42] [varchar](10) NULL,
	[Column52] [varchar](10) NULL,
	[Column62] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table2]    Script Date: 02/01/2013 21:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table2](
	[Column11] [varchar](10) NULL,
	[Column21] [varchar](10) NULL,
	[Column31] [varchar](10) NULL,
	[Column41] [varchar](10) NULL,
	[Column51] [varchar](10) NULL,
	[Column61] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table1]    Script Date: 02/01/2013 21:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table1](
	[Column1] [varchar](10) NULL,
	[Column2] [varchar](10) NULL,
	[Column3] [varchar](10) NULL,
	[Column4] [varchar](10) NULL,
	[Column5] [varchar](10) NULL,
	[Column7] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[T_Table6]    Script Date: 02/01/2013 21:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[T_Table6]
AS
    SELECT  t.Column1 AS SourceColumn
    , t6.Column15
	, t6.Column25
	, t6.Column35
	, t6.Column45
	, t6.Column55
	, CAST(t6.Column65 AS BIGINT) Column65

    FROM    dbo.Table1 AS t
    JOIN    dbo.Table6 AS t6
            ON t.Column1 = t6.Column15
            WHERE t.Column1 > 200
GO
/****** Object:  View [dbo].[T_Table5]    Script Date: 02/01/2013 21:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[T_Table5]
AS
    SELECT  t.Column1 AS SourceColumn
    , t5.Column14
	, t5.Column24
	, t5.Column34
	, t5.Column44
	, t5.Column54
	, t5.Column64

    FROM    dbo.Table1 AS t
    JOIN    dbo.Table5 AS t5
            ON t.Column1 = t5.Column14
            WHERE t.Column1 > 200
GO
/****** Object:  View [dbo].[T_Table4]    Script Date: 02/01/2013 21:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[T_Table4]
AS
    SELECT  t.Column1 AS SourceColumn
    , t4.Column13
	, t4.Column23
	, t4.Column33
	, t4.Column43
	, t4.Column53
	, t4.Column63

    FROM    dbo.Table1 AS t
    JOIN    dbo.Table4 AS t4
            ON t.Column1 = t4.Column13
            WHERE t.Column1 > 200
GO
/****** Object:  View [dbo].[T_Table3]    Script Date: 02/01/2013 21:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[T_Table3]
AS
    SELECT  t.Column1 AS SourceColumn
    , t3.Column12
	, t3.Column22
	, t3.Column32
	, t3.Column42
	, t3.Column52
	, t3.Column62

    FROM    dbo.Table1 AS t
    JOIN    dbo.Table3 AS t3
            ON t.Column1 = t3.Column12
            WHERE t.Column1 > 200
GO
/****** Object:  View [dbo].[T_Table2]    Script Date: 02/01/2013 21:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[T_Table2]
AS
    SELECT  t.Column1 AS SourceColumn
    , t2.Column11
	, t2.Column21
	, t2.Column31
	, t2.Column41
	, t2.Column51
	, t2.Column61

    FROM    dbo.Table1 AS t
    JOIN    dbo.Table2 AS t2
            ON t.Column1 = t2.Column11
            WHERE t.Column1 > 200
GO
/****** Object:  View [dbo].[T_Table1]    Script Date: 02/01/2013 21:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[T_Table1]
AS
    SELECT  t.Column1 AS SourceColumn
    , t1.Column1
	, t1.Column2
	, t1.Column3
	, t1.Column4
	, t1.Column5
	, t1.Column7

    FROM    dbo.Table1 AS t
    JOIN    dbo.Table1 AS t1
            ON t.Column1 = t1.Column1
            WHERE t.Column1 > 200
GO
/****** Object:  StoredProcedure [dbo].[GenerateTableViews]    Script Date: 02/01/2013 21:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GenerateTableViews]
    @TableSchema VARCHAR(100)
  , @TableName VARCHAR(100)
AS 
    BEGIN
    
        DECLARE @dropsql VARCHAR(MAX)
          , @createsql VARCHAR(MAX)  

        SELECT  @dropsql = 'IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'''
                + tcvd.TableSchema + '.' + tcvd.ViewName + '''))
DROP VIEW ' + tcvd.TableSchema + '.' + tcvd.ViewName + '
'
              , @createsql = 'CREATE VIEW ' + tcvd.TableSchema + '.'
                + tcvd.ViewName + '
AS
    SELECT  t.Column1 AS SourceColumn
    '
                + (SELECT   STUFF((SELECT   CHAR(9) + ', ' + tcvd.TableAlias + '.'
                                            + COLUMN_NAME + CHAR(10)
                                   FROM     INFORMATION_SCHEMA.COLUMNS AS c
                                   WHERE    c.TABLE_SCHEMA = tcvd.TableSchema
                                            AND c.TABLE_NAME = tcvd.TableName
                                  FOR
                                   XML PATH('')
                                  ), 1, 1, '')
                  ) + '
    FROM    dbo.Table1 AS t
    JOIN    ' + tcvd.TableSchema + '.' + tcvd.TableName + ' AS '
                + tcvd.TableAlias + '
            ON ' + tcvd.JoinCondition + '
            WHERE t.Column1 > 200'
        FROM    dbo.[_TableCompare_ViewDefinition] AS tcvd
        WHERE   tcvd.TableSchema = @TableSchema
                AND tcvd.TableName = @TableName
    
        PRINT @dropsql
        PRINT ''
        PRINT @createsql
    
        EXEC(@dropsql)
        EXEC(@createsql)
    END
GO
