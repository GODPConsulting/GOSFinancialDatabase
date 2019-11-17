CREATE FUNCTION [wct].[VDB]
(@Cost FLOAT (53), @Salvage FLOAT (53), @Life FLOAT (53), @Start_period FLOAT (53), @End_period FLOAT (53), @Factor FLOAT (53), @No_switch BIT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[VDB]

