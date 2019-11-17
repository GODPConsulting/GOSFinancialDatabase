CREATE FUNCTION [wct].[WORKDAY_q]
(@StartDate DATETIME, @Days INT, @HolidayDates_RangeQuery NVARCHAR (MAX))
RETURNS DATETIME
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[WORKDAY_q]

