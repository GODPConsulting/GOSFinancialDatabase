CREATE FUNCTION [wct].[YIELDACT]
(@Settlement DATETIME, @Maturity DATETIME, @Rate FLOAT (53), @Par FLOAT (53), @Price FLOAT (53), @Frequency FLOAT (53), @Basis NVARCHAR (4000), @Repayments NVARCHAR (MAX))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[YIELDACT]

