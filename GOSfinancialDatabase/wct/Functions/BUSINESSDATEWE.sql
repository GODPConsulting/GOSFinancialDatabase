﻿CREATE FUNCTION [wct].[BUSINESSDATEWE]
(@StartDate DATETIME, @DatePart NVARCHAR (4000), @Number INT, @DateRollRule NVARCHAR (4000), @Holidays NVARCHAR (MAX), @WE1 INT, @WE2 INT)
RETURNS DATETIME
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[BUSINESSDATEWE]

