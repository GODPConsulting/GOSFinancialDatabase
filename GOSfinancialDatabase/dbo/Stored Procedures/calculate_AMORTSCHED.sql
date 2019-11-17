



CREATE proc [dbo].[calculate_AMORTSCHED]

(
@PV [float], @LoanDate [datetime], @Rate [float], @FirstPayDate [datetime], @NumPmts [int], @Pmtpyr [int], @DaysInYr [int], @FV [float], @IntRule [nvarchar](4000)
)

as

begin
select         num_pmt

       ,wct.BUSINESSDATE(date_pmt,'W','0','F','') as date_pmt

       ,amt_prin_init

       ,amt_pmt

       ,amt_int_pay

       ,amt_prin_pay

	   ,amt_int_def

       ,amt_prin_end  from [wct].[AMORTSCHED](@PV , @LoanDate , @Rate , @FirstPayDate, @NumPmts , @Pmtpyr , @DaysInYr, @FV , @IntRule )
end



