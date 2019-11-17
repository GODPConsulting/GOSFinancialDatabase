


CREATE proc [dbo].[spp_CalculateCorperateAverageScore] --1053,2083

(
@CustomerId int,
@LoanApplicationId int
)
as

begin


declare @rnct int, @rtmax int  

DECLARE @tab TABLE (
  id int IDENTITY (1, 1) NOT NULL,
  CustomerId int,
  LoanApplicationId int,
  AttributeField varchar(50),
  AverageWeightedScore decimal(18,2),
  AverageWeightedScore1 decimal(18,2)
)

declare @CustomerType as int
delete from credit_customerloanscorecard where CustomerId =@CustomerId and LoanApplicationId =@LoanApplicationId

select @CustomerType =  CustomerTypeId from credit_loancustomer where CustomerId = @CustomerId
delete from @tab
insert into @tab (CustomerId, LoanApplicationId, AttributeField,AverageWeightedScore)

select a.CustomerId, a.LoanApplicationId, a.AttributeField,((a.Score/max(e.score)) * c.WeightedScore)
 as AverageWeightedScore from credit_corporateapplicationscorecarddetails a 
left outer join credit_weightedriskscore c on a.AttributeField = c.FeildName
left outer join credit_loanapplication d 
on c.ProductId = d.ApprovedProductId 
left outer join credit_creditriskscorecard e on c.CreditRiskAttributeId = e.CreditRiskAttributeId
where a.ProductId = c.ProductId and  a.AttributeField = c.FeildName and  c.ProductId = d.ApprovedProductId and c.CreditRiskAttributeId = e.CreditRiskAttributeId
and c.CustomerTypeId = e.CustomerTypeId
and a.CustomerId =@CustomerId and a.LoanApplicationId =@LoanApplicationId and e.CustomerTypeId = @CustomerType
group by  a.CustomerId, a.LoanApplicationId, a.AttributeField, a.Score,c.WeightedScore
order by  a.AttributeField 

SELECT
  @rtmax = COUNT(*)
FROM @tab

if (@rtmax =5)
begin
update a  set a.Field1 = b.AverageWeightedScore   from credit_corporateapplicationscorecard a left outer join @tab b on a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId
  where b.id =1 and a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId

update a  set a.Field2 = b.AverageWeightedScore   from credit_corporateapplicationscorecard a left outer join @tab b on a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId
  where b.id =2 and a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId

update a  set a.Field3 = b.AverageWeightedScore   from credit_corporateapplicationscorecard a left outer join @tab b on a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId
  where b.id =3 and a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId

update a  set a.Field4 = b.AverageWeightedScore   from credit_corporateapplicationscorecard a left outer join @tab b on a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId
  where b.id =4 and a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId

update a  set a.Field5 = b.AverageWeightedScore   from credit_corporateapplicationscorecard a left outer join @tab b on a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId
where b.id =5 and a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId

update a  set a.Field6 = b.AverageWeightedScore   from credit_corporateapplicationscorecard a left outer join @tab b on a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId
where b.id =6 and a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId

update a  set a.Field7 = b.AverageWeightedScore   from credit_corporateapplicationscorecard a left outer join @tab b on a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId
where b.id =7 and a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId

update a  set a.Field8 = b.AverageWeightedScore   from credit_corporateapplicationscorecard a left outer join @tab b on a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId
where b.id =8 and a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId

update a  set a.Field9 = b.AverageWeightedScore   from credit_corporateapplicationscorecard a left outer join @tab b on a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId
where b.id =9 and a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId

update a  set a.Field10 = b.AverageWeightedScore   from credit_corporateapplicationscorecard a left outer join @tab b on a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId
where b.id =10 and a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId

update a  set a.Field11 = b.AverageWeightedScore   from credit_corporateapplicationscorecard a left outer join @tab b on a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId
where b.id =11 and a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId

update a  set a.Field12 = b.AverageWeightedScore   from credit_corporateapplicationscorecard a left outer join @tab b on a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId
where b.id =12 and a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId

update a  set a.Field13 = b.AverageWeightedScore   from credit_corporateapplicationscorecard a left outer join @tab b on a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId
where b.id =13 and a.CustomerId= b.CustomerId and a.LoanApplicationId = b.LoanApplicationId


end

end


