CREATE FUNCTION [wct].[WORKDAY]
(@Holiday_TableName NVARCHAR (4000), @HolidayDates_ColumnName NVARCHAR (4000), @GroupedColumnName NVARCHAR (4000), @GroupedColumnValue SQL_VARIANT, @StartDate DATETIME, @Days INT)
RETURNS DATETIME
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[WORKDAY]

