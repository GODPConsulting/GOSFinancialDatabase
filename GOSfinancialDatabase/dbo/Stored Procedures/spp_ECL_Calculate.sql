

CREATE proc [dbo].[spp_ECL_Calculate]

as

begin

declare @rundate date
select @rundate = RunDate  from ifrs_setup_data
delete from credit_impairment where date = @rundate
insert into credit_impairment(ProductCode, ProductName,[12MonthPD], [LifeTimePD], [12MonthLGD], [LifeTimeLGD], [12MonthEAD], [LifeTimeEAD], Date)
select c.ProductCode, c.ProductName, isnull(avg(case when pdtype = '12 Months ECL' then lifetimepd else 0 end),0) as [12 Month PD], isnull(avg(case when pdtype = 'Life Time ECL' then lifetimepd else 0 end),0) as [LifeTime PD],
isnull(avg(case when lgdtype = '12 Months ECL' then lifetimelgd else 0 end),0) as [12 Month  LGD], isnull(avg(case when lgdtype = 'Life Time ECL' then lifetimelgd else 0 end),0) as [LifeTime LGD],
isnull(avg(case when pdtype = '12 Months ECL' then c.LoanAmount else 0 end ),0) as [12 Month EAD], isnull(avg(case when pdtype = 'Life Time ECL' then c.LoanAmount else 0 end ),0) as [LifeTime EAD],@rundate
 from ifrs_forecasted_pd a left outer join ifrs_forecasted_lgd  b on a.loanReferenceNumber = b.loanReferenceNumber left outer join credit_lgd_historyinformation c 
on b.LoanReferenceNumber = c.LoanReferenceNumber where b.ProductCode = c. ProductCode
group by c.ProductCode, c.ProductName


update credit_impairment set [12MonthECL] = [12MonthPD] * [12MonthLGD] * [12MonthEAD]
update credit_impairment set [LifeTimeECL] =  [LifeTimePD] * [LifeTimeLGD] * [LifeTimeEAD]

end

