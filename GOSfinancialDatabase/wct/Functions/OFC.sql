﻿CREATE FUNCTION [wct].[OFC]
(@Rate FLOAT (53), @Yield FLOAT (53), @Price FLOAT (53), @RV FLOAT (53), @Freq INT, @E FLOAT (53), @DSC FLOAT (53), @N INT, @ShortFirst BIT, @A1 FLOAT (53), @DFC1 FLOAT (53), @NLF1 FLOAT (53), @A2 FLOAT (53), @DFC2 FLOAT (53), @NLF2 FLOAT (53), @Nqf INT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[OFC]

