




CREATE proc [dbo].[calculate_XIRR]

(
@CF [float], @CFdate [datetime], @Guess [float]
)

as

begin
select [wct].[XIRR](@CF , @CFdate , @Guess) as IRR
end




