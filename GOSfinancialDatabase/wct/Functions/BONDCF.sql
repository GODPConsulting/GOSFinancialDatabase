CREATE FUNCTION [wct].[BONDCF]
(@Settlement DATETIME, @Maturity DATETIME, @Rate FLOAT (53), @Yield FLOAT (53), @Redemption FLOAT (53), @Frequency FLOAT (53), @Basis NVARCHAR (4000), @Issue DATETIME, @FirstCoupon DATETIME, @LastCoupon DATETIME)
RETURNS 
     TABLE (
        [date_pmt]     DATETIME   NULL,
        [amt_cashflow] FLOAT (53) NULL,
        [N]            FLOAT (53) NULL,
        [PVF]          FLOAT (53) NULL,
        [PVCF]         FLOAT (53) NULL,
        [cumPVCF]      FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[BONDCF]

