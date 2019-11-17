CREATE FUNCTION [wct].[ODDFSCHED]
(@Rate FLOAT (53), @Nper INT, @PV FLOAT (53), @FV FLOAT (53), @FirstPeriod FLOAT (53), @IntRule NVARCHAR (4000))
RETURNS 
     TABLE (
        [num_pmt]       INT        NULL,
        [amt_prin_init] FLOAT (53) NULL,
        [amt_pmt]       FLOAT (53) NULL,
        [amt_int_pay]   FLOAT (53) NULL,
        [amt_prin_pay]  FLOAT (53) NULL,
        [amt_prin_end]  FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[ODDFSCHED]

