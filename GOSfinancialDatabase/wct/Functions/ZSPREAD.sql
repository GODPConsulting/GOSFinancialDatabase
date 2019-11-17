CREATE FUNCTION [wct].[ZSPREAD]
(@Settlement DATETIME, @Maturity DATETIME, @Rate SQL_VARIANT, @Price FLOAT (53), @Redemption FLOAT (53), @Frequency FLOAT (53), @Basis NVARCHAR (4000), @LastCouponDate DATETIME, @FirstCouponDate DATETIME, @IssueDate DATETIME, @CCZero NVARCHAR (MAX), @CurveType NVARCHAR (4000), @CurveStartDate DATETIME, @CurveDayCount NVARCHAR (4000), @CurveFrequency INT, @InterpMethod NVARCHAR (4000))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[ZSPREAD]

