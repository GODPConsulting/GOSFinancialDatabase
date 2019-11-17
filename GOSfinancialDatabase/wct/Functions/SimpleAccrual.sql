CREATE FUNCTION [wct].[SimpleAccrual]
(@date_start DATETIME, @date_end DATETIME, @bal_start FLOAT (53), @Rate SQL_VARIANT, @Spread SQL_VARIANT, @CashMvMnt NVARCHAR (MAX), @Basis NVARCHAR (4000))
RETURNS 
     TABLE (
        [aDate]    DATETIME   NULL,
        [Rate]     FLOAT (53) NULL,
        [Spread]   FLOAT (53) NULL,
        [BalBegin] FLOAT (53) NULL,
        [Movement] FLOAT (53) NULL,
        [BalEnd]   FLOAT (53) NULL,
        [Interest] FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[SimpleAccrual]

