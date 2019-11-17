CREATE FUNCTION [wct].[PAYMENTPERIODS]
(@ReferenceDate DATETIME, @PaymentFrequency INT, @PrevPayDate DATETIME, @StartDate DATETIME, @FirstPayDate DATETIME, @InterimGracePeriodStartDate DATETIME, @InterimGracePeriodEndDate DATETIME, @MaturityDate DATETIME)
RETURNS 
     TABLE (
        [InitialGracePeriod]           INT NULL,
        [InterimGracePeriodMonthStart] INT NULL,
        [InterimGracePeriodMonthEnd]   INT NULL,
        [MonthsUntilFirstPayment]      INT NULL,
        [InterimGracePeriod]           INT NULL,
        [NumberOfPayments]             INT NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[PAYMENTPERIODS]

