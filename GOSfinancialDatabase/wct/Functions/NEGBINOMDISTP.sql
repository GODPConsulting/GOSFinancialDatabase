﻿CREATE FUNCTION [wct].[NEGBINOMDISTP]
(@Number_f FLOAT (53), @Number_s FLOAT (53), @Probability_s FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[NEGBINOMDISTP]

