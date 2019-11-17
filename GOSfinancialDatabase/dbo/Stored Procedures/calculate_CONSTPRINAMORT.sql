




CREATE proc [dbo].[calculate_CONSTPRINAMORT]

(
@PV [float], @Rate [float], @LoanDate [datetime], @NumPmtsPerYear [int], @FirstPaymentDate [datetime], @DaysInYr [int],
@NumberOfPayments [int], @LastPaymentNumber [int], @FirstPrinPayNo [int], @FV [float], @PPMT [float], @eom [bit]

)

as

begin
select   num_pmt

       ,wct.BUSINESSDATE(date_pmt,'W','0','F','') as date_pmt

       ,amt_prin_init

       ,amt_pmt

       ,amt_int_pay

       ,amt_prin_pay

       ,amt_prin_end from [wct].[CONSTPRINAMORT](@PV , @Rate , @LoanDate , @NumPmtsPerYear, @FirstPaymentDate , @DaysInYr , @NumberOfPayments, @LastPaymentNumber , @FirstPrinPayNo, @FV,null,@eom)
end




