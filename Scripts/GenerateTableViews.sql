ALTER PROCEDURE dbo.GenerateTableViews
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