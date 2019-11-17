CREATE FUNCTION [wct].[GROWTH_q]
(@Known_y_Known_x_RangeQuery NVARCHAR (MAX), @New_x FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[GROWTH_q]

