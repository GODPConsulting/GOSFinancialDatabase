CREATE FUNCTION [wct].[SeriesFloat]
(@StartValue FLOAT (53), @StopValue FLOAT (53), @StepValue FLOAT (53), @MaxIterations FLOAT (53), @SeriesType NVARCHAR (4000))
RETURNS 
     TABLE (
        [Seq]         INT        NULL,
        [SeriesValue] FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[SeriesFloat]

