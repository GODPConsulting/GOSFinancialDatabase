




CREATE proc [dbo].[calculate_UNEQUALLOANPAYMENTS]

(
@PV [float], @Rate [float], @LoanDate [datetime], @InterestFrequency [int], @FirstPaymentDate [datetime], @DaysInYr [int], @PrinPaymentMultiple [int], 
@FirstPrinPayNo [int], @NumberOfPayments [int], @LastPaymentNumber [int], @FV [float], @IsRegPay [bit]

)

as

begin
select   num_pmt

       ,wct.BUSINESSDATE(date_pmt,'W','0','F','') as date_pmt

       ,amt_prin_init

       ,amt_pmt

       ,amt_int_pay

       ,amt_prin_pay

       ,amt_prin_end  from [wct].[UNEQUALLOANPAYMENTS](@PV , @Rate , @LoanDate , @InterestFrequency, @FirstPaymentDate , @DaysInYr , @PrinPaymentMultiple, @FirstPrinPayNo , @NumberOfPayments,@LastPaymentNumber, @FV,@IsRegPay)
end




