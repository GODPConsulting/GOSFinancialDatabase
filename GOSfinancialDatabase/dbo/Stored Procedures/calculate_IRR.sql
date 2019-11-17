




CREATE proc [dbo].[calculate_IRR]

(
@CF [float], @Per [int], @Guess [float]
)

as

begin
select [wct].[IRR](@CF , @Per , @Guess) as IRR
end




