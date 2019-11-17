CREATE FUNCTION [wct].[NETWORKDAYS]
(@Holiday_TableName NVARCHAR (4000), @HolidayDates_ColumnName NVARCHAR (4000), @GroupedColumnName NVARCHAR (4000), @GroupedColumnValue SQL_VARIANT, @StartDate DATETIME, @EndDate DATETIME)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[NETWORKDAYS]

