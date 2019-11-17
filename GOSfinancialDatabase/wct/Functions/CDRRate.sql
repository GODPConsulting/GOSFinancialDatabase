CREATE FUNCTION [wct].[CDRRate]
(@PrinAmt FLOAT (53), @InterestRate FLOAT (53), @NumPmts INT, @LastPmtNum INT, @PmtPerYr INT, @CPRRatesQuery NVARCHAR (MAX), @DefAmt FLOAT (53), @InterestOnly BIT, @PrinPaymentMultiple INT, @FirstPrinPayNo INT, @PmtPayPct FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[CDRRate]

