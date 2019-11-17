CREATE FUNCTION [wct].[CDRCashflow]
(@PrinAmt FLOAT (53), @InterestRate FLOAT (53), @NumPmts INT, @LastPmtNum INT, @PmtPerYr INT, @LSRatesQuery NVARCHAR (MAX), @CPRRatesQuery NVARCHAR (MAX), @CDRRatesQuery NVARCHAR (MAX), @InterestOnly BIT, @PrinPaymentMultiple INT, @FirstPrinPayNo INT, @PmtPayPct FLOAT (53))
RETURNS 
     TABLE (
        [num_pmt]           INT        NULL,
        [CPR]               FLOAT (53) NULL,
        [CDR]               FLOAT (53) NULL,
        [LS]                FLOAT (53) NULL,
        [cont_prin_begin]   FLOAT (53) NULL,
        [cont_pmt]          FLOAT (53) NULL,
        [cont_int_pay]      FLOAT (53) NULL,
        [cont_prin_pay]     FLOAT (53) NULL,
        [cont_prin_end]     FLOAT (53) NULL,
        [proj_prin_begin]   FLOAT (53) NULL,
        [proj_pmt]          FLOAT (53) NULL,
        [proj_int_pay]      FLOAT (53) NULL,
        [proj_prin_pay]     FLOAT (53) NULL,
        [prin_prepay]       FLOAT (53) NULL,
        [amt_default]       FLOAT (53) NULL,
        [amt_loss_severity] FLOAT (53) NULL,
        [proj_prin_end]     FLOAT (53) NULL,
        [proj_amt_cashflow] FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[CDRCashflow]

