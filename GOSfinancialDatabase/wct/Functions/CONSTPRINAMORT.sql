CREATE FUNCTION [wct].[CONSTPRINAMORT]
(@PV FLOAT (53), @Rate FLOAT (53), @LoanDate DATETIME, @NumPmtsPerYear INT, @FirstPaymentDate DATETIME, @DaysInYr INT, @NumberOfPayments INT, @LastPaymentNumber INT, @FirstPrinPayNo INT, @FV FLOAT (53), @PPMT FLOAT (53), @eom BIT)
RETURNS 
     TABLE (
        [num_pmt]       INT        NULL,
        [date_pmt]      DATETIME   NULL,
        [amt_prin_init] FLOAT (53) NULL,
        [amt_pmt]       FLOAT (53) NULL,
        [amt_int_pay]   FLOAT (53) NULL,
        [amt_prin_pay]  FLOAT (53) NULL,
        [amt_prin_end]  FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[CONSTPRINAMORT]

