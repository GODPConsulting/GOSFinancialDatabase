CREATE FUNCTION [wct].[CDRCashflowIRR]
(@PV FLOAT (53), @PrinAmt FLOAT (53), @InterestRate FLOAT (53), @NumPmts INT, @LastPmtNum INT, @PmtPerYr INT, @LSRatesQuery NVARCHAR (MAX), @CPRRatesQuery NVARCHAR (MAX), @CDRRatesQuery NVARCHAR (MAX), @InterestOnly BIT, @PrinPaymentMultiple INT, @FirstPrinPayNo INT, @PmtPayPct FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[CDRCashflowIRR]

