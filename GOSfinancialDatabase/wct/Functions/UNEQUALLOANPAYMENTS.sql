CREATE FUNCTION [wct].[UNEQUALLOANPAYMENTS]
(@PV FLOAT (53), @Rate FLOAT (53), @LoanDate DATETIME, @InterestFrequency INT, @FirstPaymentDate DATETIME, @DaysInYr INT, @PrinPaymentMultiple INT, @FirstPrinPayNo INT, @NumberOfPayments INT, @LastPaymentNumber INT, @FV FLOAT (53), @IsRegPay BIT)
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
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[UNEQUALLOANPAYMENTS]

