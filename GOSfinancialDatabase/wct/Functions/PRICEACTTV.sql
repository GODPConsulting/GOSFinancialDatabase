CREATE FUNCTION [wct].[PRICEACTTV]
(@Settlement DATETIME, @Maturity DATETIME, @Rate FLOAT (53), @Par FLOAT (53), @Yield FLOAT (53), @Frequency FLOAT (53), @Basis NVARCHAR (4000), @Repayments NVARCHAR (MAX))
RETURNS 
     TABLE (
        [date_pmt]     DATETIME   NULL,
        [amt_prin]     FLOAT (53) NULL,
        [amt_coupon]   FLOAT (53) NULL,
        [amt_prinpay]  FLOAT (53) NULL,
        [amt_cashflow] FLOAT (53) NULL,
        [DIP]          FLOAT (53) NULL,
        [DIY]          FLOAT (53) NULL,
        [t]            FLOAT (53) NULL,
        [DF]           FLOAT (53) NULL,
        [PVF]          FLOAT (53) NULL,
        [PVCF]         FLOAT (53) NULL,
        [cumPVCF]      FLOAT (53) NULL,
        [PVP]          FLOAT (53) NULL,
        [cumPVP]       FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[PRICEACTTV]

