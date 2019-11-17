



CREATE proc [dbo].[calculate_LRATE]

(
@PV [float], @LoanDate [datetime], @Pmt [float], @FirstPayDate [datetime], @NumPmts [int], @Pmtpyr [int], @DaysInYr [float], @FV [float], @IntRule [nvarchar](4000), @Guess [float]
)

as

begin
select  [wct].[LRATE](@PV , @LoanDate , @Pmt , @FirstPayDate , @NumPmts , @Pmtpyr , @DaysInYr, @FV , @IntRule , null  ) as eir
end



