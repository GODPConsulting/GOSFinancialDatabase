CREATE FUNCTION [wct].[AIFACTOR]
(@Basis NVARCHAR (4000), @Rate FLOAT (53), @Maturity DATETIME, @Settlement DATETIME, @Frequency INT, @FirstInterestDate DATETIME, @LastInterestDate DATETIME, @IssueDate DATETIME, @Holidays NVARCHAR (MAX))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[AIFACTOR]

