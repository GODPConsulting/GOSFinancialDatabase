CREATE FUNCTION [wct].[CUMPRINC]
(@Rate FLOAT (53), @Nper FLOAT (53), @PV FLOAT (53), @Start_period INT, @End_period INT, @Pay_type INT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[CUMPRINC]

