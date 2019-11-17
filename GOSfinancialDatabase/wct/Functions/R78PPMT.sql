CREATE FUNCTION [wct].[R78PPMT]
(@PV FLOAT (53), @LoanDate DATETIME, @Rate FLOAT (53), @FirstPayDate DATETIME, @NumPmts INT, @Pmtpyr INT, @Per INT, @DaysInYr INT, @FV FLOAT (53), @IntRule NVARCHAR (4000))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[R78PPMT]

