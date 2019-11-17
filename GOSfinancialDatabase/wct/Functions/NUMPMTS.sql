CREATE FUNCTION [wct].[NUMPMTS]
(@FirstPaymentDate DATETIME, @LastPaymentDate DATETIME, @PmtPerYear INT)
RETURNS INT
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[NUMPMTS]

