CREATE FUNCTION [wct].[MUPDATE]
(@A NVARCHAR (MAX), @start_row_A INT, @end_row_A INT, @start_col_A INT, @end_col_A INT, @EOperator NVARCHAR (4000), @B NVARCHAR (MAX), @start_row_B INT, @end_row_B INT, @start_col_B INT, @end_col_B INT)
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[MUPDATE]

