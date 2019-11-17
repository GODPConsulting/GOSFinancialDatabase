CREATE FUNCTION [wct].[ODDFPV]
(@Rate FLOAT (53), @Nper INT, @Pmt FLOAT (53), @FV FLOAT (53), @FirstPeriod FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[ODDFPV]

