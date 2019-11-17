CREATE FUNCTION [wct].[CUMODDFPPMT]
(@Rate FLOAT (53), @Nper INT, @PV FLOAT (53), @FV FLOAT (53), @StartPeriod INT, @EndPeriod INT, @FirstPeriod FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[CUMODDFPPMT]

