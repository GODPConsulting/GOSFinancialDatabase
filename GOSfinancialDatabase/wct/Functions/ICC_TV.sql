CREATE FUNCTION [wct].[ICC_TV]
(@InputData_RangeQuery NVARCHAR (MAX), @TypeTest NVARCHAR (4000), @Alpha FLOAT (53), @r0 FLOAT (53))
RETURNS 
     TABLE (
        [r]       FLOAT (53) NULL,
        [F]       FLOAT (53) NULL,
        [df1]     FLOAT (53) NULL,
        [df2]     FLOAT (53) NULL,
        [p]       FLOAT (53) NULL,
        [FL]      FLOAT (53) NULL,
        [FU]      FLOAT (53) NULL,
        [LB]      FLOAT (53) NULL,
        [UB]      FLOAT (53) NULL,
        [NS]      INT        NULL,
        [NR]      INT        NULL,
        [SStotal] FLOAT (53) NULL,
        [MSr]     FLOAT (53) NULL,
        [MSw]     FLOAT (53) NULL,
        [MSc]     FLOAT (53) NULL,
        [MSe]     FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[ICC_TV]

