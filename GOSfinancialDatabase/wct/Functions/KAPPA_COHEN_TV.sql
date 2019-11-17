CREATE FUNCTION [wct].[KAPPA_COHEN_TV]
(@InputData_RangeQuery NVARCHAR (MAX), @Weight NVARCHAR (MAX))
RETURNS 
     TABLE (
        [Pa] FLOAT (53) NULL,
        [Pc] FLOAT (53) NULL,
        [K]  FLOAT (53) NULL,
        [P]  FLOAT (53) NULL,
        [Z]  FLOAT (53) NULL,
        [SE] FLOAT (53) NULL,
        [NS] FLOAT (53) NULL,
        [NR] FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[KAPPA_COHEN_TV]

