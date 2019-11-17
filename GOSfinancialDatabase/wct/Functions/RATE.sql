CREATE FUNCTION [wct].[RATE]
(@Nper FLOAT (53), @Pmt FLOAT (53), @PV FLOAT (53), @FV FLOAT (53), @Pay_type INT, @Guess FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[RATE]

