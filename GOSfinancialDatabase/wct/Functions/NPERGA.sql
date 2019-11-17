CREATE FUNCTION [wct].[NPERGA]
(@FV FLOAT (53), @Pgr FLOAT (53), @Pmt FLOAT (53), @Rate FLOAT (53), @Pay_type INT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[NPERGA]

