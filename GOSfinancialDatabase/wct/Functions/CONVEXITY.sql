CREATE FUNCTION [wct].[CONVEXITY]
(@Settlement DATETIME, @Maturity DATETIME, @Rate FLOAT (53), @Yield FLOAT (53), @Frequency INT, @Basis NVARCHAR (4000), @Par FLOAT (53), @Redemption FLOAT (53), @IssueDate DATETIME, @FirstInterestDate DATETIME, @LastInterestDate DATETIME)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[CONVEXITY]

