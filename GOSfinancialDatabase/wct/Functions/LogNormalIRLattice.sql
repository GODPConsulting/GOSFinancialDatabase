CREATE FUNCTION [wct].[LogNormalIRLattice]
(@Settlement DATETIME, @Maturity DATETIME, @Rate SQL_VARIANT, @Spread FLOAT (53), @Redemption FLOAT (53), @Frequency INT, @Basis NVARCHAR (4000), @LastCouponDate DATETIME, @FirstCouponDate DATETIME, @IssueDate DATETIME, @CCZero NVARCHAR (MAX), @CurveType NVARCHAR (4000), @TradeDate DATETIME, @CurveDayCount NVARCHAR (4000), @Notice INT, @CurveInterpMethod NVARCHAR (4000), @Vol FLOAT (53), @OptionSched NVARCHAR (MAX))
RETURNS 
     TABLE (
        [date_step]       DATETIME   NULL,
        [num_step]        INT        NULL,
        [num_node]        INT        NULL,
        [rate_fwd]        FLOAT (53) NULL,
        [rate_calibrated] FLOAT (53) NULL,
        [T]               FLOAT (53) NULL,
        [delta]           FLOAT (53) NULL,
        [df]              FLOAT (53) NULL,
        [df_calibrated]   FLOAT (53) NULL,
        [cczero]          FLOAT (53) NULL,
        [PVCF]            FLOAT (53) NULL,
        [coupon]          FLOAT (53) NULL,
        [price_call]      FLOAT (53) NULL,
        [price_put]       FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[LogNormalIRLattice]

