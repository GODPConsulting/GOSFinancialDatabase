CREATE FUNCTION [wct].[ConstantPrincipalAmount]
(@OutstandingAmount FLOAT (53), @InterestBasis NVARCHAR (4000), @InterestRate FLOAT (53), @FreqPayPrincipal INT, @FreqPayInterest INT, @PrinPayAmount FLOAT (53), @ReferenceDate DATETIME, @PrevPrincipalPayDate DATETIME, @PrevInterestPayDate DATETIME, @StartDate DATETIME, @FirstPrincipalPayDate DATETIME, @FirstInterestPayDate DATETIME, @PrincipalGracePeriodStartDate DATETIME, @PrincipalGracePeriodEndDate DATETIME, @InterestGracePeriodStartDate DATETIME, @InterestGracePeriodEndDate DATETIME)
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
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[ConstantPrincipalAmount]

