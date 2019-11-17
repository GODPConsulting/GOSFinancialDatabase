

CREATE proc [dbo].[spp_CalculateImpairment]

as

begin

exec spp_CalculateIndividualCustomerLoanPD_History_Test2
exec spp_ifrs_regression_Analysis_pd
exec LifeTimePD
exec spp_CustomerLoanLGD_History
exec spp_ifrs_regression_Analysis_lgd
exec LifeTimeLGD
exec spp_ECL_Calculate

end

