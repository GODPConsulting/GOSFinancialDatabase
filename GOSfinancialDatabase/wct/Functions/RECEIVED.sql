CREATE FUNCTION [wct].[RECEIVED]
(@Settlement DATETIME, @Maturity DATETIME, @Investment FLOAT (53), @Discount FLOAT (53), @Basis NVARCHAR (4000))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[RECEIVED]

