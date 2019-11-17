CREATE FUNCTION [wct].[NSCOEF2]
(@YieldCurve_RangeQuery NVARCHAR (MAX), @NumSteps INT, @Tau_min FLOAT (53), @Tau_max FLOAT (53), @B0_min FLOAT (53), @B0_max FLOAT (53), @B1_min FLOAT (53), @B1_max FLOAT (53), @B2_min FLOAT (53), @B2_max FLOAT (53))
RETURNS 
     TABLE (
        [B0]   FLOAT (53) NULL,
        [B1]   FLOAT (53) NULL,
        [B2]   FLOAT (53) NULL,
        [Tau]  FLOAT (53) NULL,
        [RMSE] FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[NSCOEF2]

