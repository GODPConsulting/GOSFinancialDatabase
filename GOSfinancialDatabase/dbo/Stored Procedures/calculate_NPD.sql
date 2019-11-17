




CREATE proc [dbo].[calculate_NPD]

(
@SettDate [datetime], @FirstPayDate [datetime], @Pmtpyr [int], @NumPmts [int]
)

as

begin
select [wct].[NPD](@SettDate , @FirstPayDate , @Pmtpyr,@NumPmts) as NextPaymentDate
end




