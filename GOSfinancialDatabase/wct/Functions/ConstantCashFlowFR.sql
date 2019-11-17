CREATE FUNCTION [wct].[ConstantCashFlowFR]
(@OutstandingAmount FLOAT (53), @LastPrinPayAmount FLOAT (53), @PaymentFrequency INT, @MaturityDate DATETIME, @ReferenceDate DATETIME, @PrevPayDate DATETIME, @StartDate DATETIME, @FirstPayDate DATETIME, @GracePeriodStartDate DATETIME, @GracePeriodEndDate DATETIME, @FutureRates NVARCHAR (MAX))
RETURNS 
     TABLE (
        [Period]              INT        NULL,
        [PrincipalPayment]    FLOAT (53) NULL,
        [InterestPayment]     FLOAT (53) NULL,
        [CashFlow]            FLOAT (53) NULL,
        [OutstandingExposure] FLOAT (53) NULL,
        [CapitalAmountInDebt] FLOAT (53) NULL,
        [TotalExposure]       FLOAT (53) NULL,
        [NumberOfMonth]       INT        NULL,
        [PaymentDate]         DATETIME   NULL,
        [GraceInterest]       FLOAT (53) NULL,
        [InterestRate]        FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[ConstantCashFlowFR]

