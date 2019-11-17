CREATE FUNCTION [wct].[PriceFromZeroesTVF]
(@Settlement DATETIME, @Maturity DATETIME, @Rate SQL_VARIANT, @CurveSpread FLOAT (53), @Redemption FLOAT (53), @Frequency FLOAT (53), @Basis NVARCHAR (4000), @LastCouponDate DATETIME, @FirstCouponDate DATETIME, @IssueDate DATETIME, @CCZero NVARCHAR (MAX), @CurveType NVARCHAR (4000), @CurveStartDate DATETIME, @CurveDayCount NVARCHAR (4000), @CurveFrequency INT, @InterpMethod NVARCHAR (4000))
RETURNS 
     TABLE (
        [date_pmt] DATETIME   NULL,
        [T]        FLOAT (53) NULL,
        [delta]    FLOAT (53) NULL,
        [cczero]   FLOAT (53) NULL,
        [spot]     FLOAT (53) NULL,
        [pvf]      FLOAT (53) NULL,
        [fwd]      FLOAT (53) NULL,
        [spread]   FLOAT (53) NULL,
        [df]       FLOAT (53) NULL,
        [cf]       FLOAT (53) NULL,
        [dcf]      FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[PriceFromZeroesTVF]

