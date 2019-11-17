CREATE FUNCTION [wct].[AMORTSCHED]
(@PV FLOAT (53), @LoanDate DATETIME, @Rate FLOAT (53), @FirstPayDate DATETIME, @NumPmts INT, @Pmtpyr INT, @DaysInYr INT, @FV FLOAT (53), @IntRule NVARCHAR (4000))
RETURNS 
     TABLE (
        [num_pmt]       INT        NULL,
        [date_pmt]      DATETIME   NULL,
        [amt_prin_init] FLOAT (53) NULL,
        [amt_pmt]       FLOAT (53) NULL,
        [amt_int_pay]   FLOAT (53) NULL,
        [amt_prin_pay]  FLOAT (53) NULL,
        [amt_int_def]   FLOAT (53) NULL,
        [amt_prin_end]  FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[AMORTSCHED]

