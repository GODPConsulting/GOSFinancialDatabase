CREATE FUNCTION [wct].[DISFACTORS]
(@Settlement DATETIME, @Maturity DATETIME, @Redemption FLOAT (53), @DRate FLOAT (53), @Price FLOAT (53), @Yield FLOAT (53), @Basis NVARCHAR (4000))
RETURNS 
     TABLE (
        [DSM] FLOAT (53) NULL,
        [B]   FLOAT (53) NULL,
        [P]   FLOAT (53) NULL,
        [D]   FLOAT (53) NULL,
        [Y]   FLOAT (53) NULL,
        [T]   FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[DISFACTORS]

