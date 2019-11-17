CREATE FUNCTION [wct].[RPIFACTORS]
(@Settlement DATETIME, @Maturity DATETIME, @Rate FLOAT (53), @Price FLOAT (53), @Yield FLOAT (53), @Redemption FLOAT (53), @Frequency FLOAT (53), @Basis NVARCHAR (4000))
RETURNS 
     TABLE (
        [PrevCoup] DATETIME   NULL,
        [NextCoup] DATETIME   NULL,
        [A]        FLOAT (53) NULL,
        [DSC]      FLOAT (53) NULL,
        [E]        FLOAT (53) NULL,
        [N]        INT        NULL,
        [C]        FLOAT (53) NULL,
        [P]        FLOAT (53) NULL,
        [AI]       FLOAT (53) NULL,
        [Y]        FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[RPIFACTORS]

