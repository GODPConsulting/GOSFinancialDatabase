﻿CREATE FUNCTION [wct].[INTERPDFACT]
(@InputData_RangeQuery NVARCHAR (MAX), @iStartDate DATETIME, @iEndDate DATETIME, @Startdate DATETIME)
RETURNS 
     TABLE (
        [vDate] DATETIME   NULL,
        [DF]    FLOAT (53) NULL,
        [ZC]    FLOAT (53) NULL,
        [CC]    FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[INTERPDFACT]

