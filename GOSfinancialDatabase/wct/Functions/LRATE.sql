CREATE FUNCTION [wct].[LRATE]
(@PV FLOAT (53), @LoanDate DATETIME, @Pmt FLOAT (53), @FirstPayDate DATETIME, @NumPmts INT, @Pmtpyr INT, @DaysInYr FLOAT (53), @FV FLOAT (53), @IntRule NVARCHAR (4000), @Guess FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[LRATE]

