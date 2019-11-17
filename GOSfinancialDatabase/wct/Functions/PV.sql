CREATE FUNCTION [wct].[PV]
(@Rate FLOAT (53), @Nper FLOAT (53), @Pmt FLOAT (53), @FV FLOAT (53), @Pay_type INT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[PV]

