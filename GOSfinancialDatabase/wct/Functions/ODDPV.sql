CREATE FUNCTION [wct].[ODDPV]
(@Rate FLOAT (53), @NumPmts INT, @Pmt FLOAT (53), @FV FLOAT (53), @Pmtpyr INT, @LoanDate DATETIME, @FirstPayDate DATETIME, @DaysInYr FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[ODDPV]

