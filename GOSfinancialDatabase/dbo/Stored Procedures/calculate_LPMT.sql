



CREATE proc [dbo].[calculate_LPMT]

(
@PV [float], @LoanDate [datetime], @Rate [float], @FirstPayDate [datetime], @NumPmts [int], @Pmtpyr [int], @DaysInYr [float], @FV [float], @IntRule [nvarchar](4000)
)

as

begin
select [wct].[LPMT](@PV , @LoanDate , @Rate , @FirstPayDate, @NumPmts , @Pmtpyr , @DaysInYr, @FV , @IntRule ) as pmt
end



