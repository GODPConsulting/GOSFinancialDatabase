CREATE FUNCTION [wct].[SeriesDate]
(@StartDate DATETIME, @StopDate DATETIME, @StepDays FLOAT (53), @MaxIterations FLOAT (53), @SeriesType NVARCHAR (4000))
RETURNS 
     TABLE (
        [Seq]         INT      NULL,
        [SeriesValue] DATETIME NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[SeriesDate]

