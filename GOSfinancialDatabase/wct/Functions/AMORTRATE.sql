CREATE FUNCTION [wct].[AMORTRATE]
(@Settlement DATETIME, @Maturity DATETIME, @Rate FLOAT (53), @FaceAmount FLOAT (53), @CleanPrice FLOAT (53), @Redemption FLOAT (53), @Frequency FLOAT (53), @Basis NVARCHAR (4000), @IssueDate DATETIME, @FirstInterestDate DATETIME, @LastInterestDate DATETIME, @Holidays NVARCHAR (MAX))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[AMORTRATE]

