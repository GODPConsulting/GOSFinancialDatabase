CREATE FUNCTION [wct].[PriceFromIRLattice]
(@Settlement DATETIME, @Maturity DATETIME, @Rate SQL_VARIANT, @Spread FLOAT (53), @Redemption FLOAT (53), @Frequency INT, @Basis NVARCHAR (4000), @LastCouponDate DATETIME, @FirstCouponDate DATETIME, @IssueDate DATETIME, @CCZero NVARCHAR (MAX), @CurveType NVARCHAR (4000), @TradeDate DATETIME, @CurveDayCount NVARCHAR (4000), @days_notice INT, @CurveInterpMethod NVARCHAR (4000), @Vol FLOAT (53), @OptionSched NVARCHAR (MAX))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[PriceFromIRLattice]

