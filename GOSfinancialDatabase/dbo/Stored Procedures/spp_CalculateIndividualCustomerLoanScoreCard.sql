

--exec [dbo].[spp_CalculateIndividualAverageScore]1022,4094
--exec [dbo].[spp_CalculateIndividualCustomerLoanPD_Temp]1022,4094

--drop proc spp_CalculateCustomerLoanScoreCard

CREATE proc [dbo].[spp_CalculateIndividualCustomerLoanScoreCard]--1022,4094

(
@CustomerId int,
@LoanApplicationId int
)
as

begin
Declare @ProductWeightedScore as decimal(18,4)
Declare @AverageWeightedScore as decimal(18,4)
Declare @CompareAverageWeightedScore as decimal(18,4)
Declare @WeightedScore as decimal(18,4)
Declare @PD as decimal(18,4)
declare @CustomerType as int
declare @ProductId as int
delete from credit_customerloanscorecard where CustomerId =@CustomerId and LoanApplicationId =@LoanApplicationId

select @CustomerType =  CustomerTypeId from credit_loancustomer where CustomerId = @CustomerId
select @ProductId =  ApprovedProductId from credit_loanapplication where CustomerId = @CustomerId
insert into credit_customerloanscorecard(CustomerId, LoanApplicationId, AttributeField, Score, AttributeWeightedScore, AverageWeightedScore, Date)
select a.CustomerId, a.LoanApplicationId, a.AttributeField, a.Score,c.WeightedScore,((a.Score/max(e.score)) * c.WeightedScore)
 as AverageWeightedScore, getdate() from credit_individualapplicationscorecarddetails a 
left outer join credit_weightedriskscore c on a.AttributeField = c.FeildName
left outer join credit_loanapplication d 
on c.ProductId = d.ApprovedProductId 
left outer join credit_creditriskscorecard e on c.CreditRiskAttributeId = e.CreditRiskAttributeId
where a.ProductId = c.ProductId and  a.AttributeField = c.FeildName and  c.ProductId = d.ApprovedProductId and c.CreditRiskAttributeId = e.CreditRiskAttributeId
and c.CustomerTypeId = e.CustomerTypeId
and a.CustomerId =@CustomerId and a.LoanApplicationId =@LoanApplicationId and e.CustomerTypeId = @CustomerType
group by  a.CustomerId, a.LoanApplicationId, a.AttributeField, a.Score,c.WeightedScore
order by  a.AttributeField 

select top 1 @ProductWeightedScore  = ProductMaxWeight from credit_weightedriskscore where ProductId = @ProductId


select @WeightedScore =  sum(AverageWeightedScore) from  credit_customerloanscorecard where CustomerId =@CustomerId and LoanApplicationId =@LoanApplicationId

--set @AverageWeightedScore = (@WeightedScore/@ProductWeightedScore)*100

--if(@AverageWeightedScore <=49)
--Begin
--set @AverageWeightedScore = 0 
--set @CompareAverageWeightedScore  = 49
--end

--if(@AverageWeightedScore > 49 and @AverageWeightedScore <= 59)
--Begin
--set @AverageWeightedScore = 50
--set @CompareAverageWeightedScore  = 59
--end

--if(@AverageWeightedScore > 59 and @AverageWeightedScore <= 69)
--Begin
--set @AverageWeightedScore = 60
--set @CompareAverageWeightedScore  = 69
--end

--if(@AverageWeightedScore > 69 and @AverageWeightedScore <= 79)
--Begin
--set @AverageWeightedScore = 70
--set @CompareAverageWeightedScore  = 79
--end
--if(@AverageWeightedScore >=80)
--Begin
--set @AverageWeightedScore = 80 
--set @CompareAverageWeightedScore  = 100
--end

--select @PD = PD from credit_creditratingpd where MinRangeScore = @AverageWeightedScore and MaxRangeScore = @CompareAverageWeightedScore

update credit_loanapplication set Score = @WeightedScore where LoanApplicationId = @LoanApplicationId and CustomerId =@CustomerId 

--update credit_loanapplication set PD = @PD where LoanApplicationId = @LoanApplicationId and CustomerId =@CustomerId 

exec [dbo].[spp_CalculateIndividualAverageScore]@CustomerId,@LoanApplicationId
exec [dbo].[spp_CalculateIndividualCustomerLoanPD_Temp]@CustomerId,@LoanApplicationId
end




