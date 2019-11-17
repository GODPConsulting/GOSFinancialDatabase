CREATE FUNCTION [wct].[SPLINE_q]
(@XY_RangeQuery NVARCHAR (MAX), @New_x FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[SPLINE_q]

