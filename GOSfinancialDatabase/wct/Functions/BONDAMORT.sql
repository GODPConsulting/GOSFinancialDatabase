CREATE FUNCTION [wct].[BONDAMORT]
(@Settlement DATETIME, @Maturity DATETIME, @Rate FLOAT (53), @FaceAmount FLOAT (53), @CleanPrice FLOAT (53), @Redemption FLOAT (53), @Frequency FLOAT (53), @Basis NVARCHAR (4000), @IssueDate DATETIME, @FirstInterestDate DATETIME, @LastInterestDate DATETIME, @Holidays NVARCHAR (MAX))
RETURNS 
     TABLE (
        [amort_date]     DATETIME   NULL,
        [dtm]            INT        NULL,
        [begin_book_val] FLOAT (53) NULL,
        [dly_coup]       FLOAT (53) NULL,
        [dly_eff_rate]   FLOAT (53) NULL,
        [dly_amort]      FLOAT (53) NULL,
        [end_book_val]   FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[BONDAMORT]

