


CREATE proc [dbo].[spp_CustomerLoanLGD_History]

as
begin

DECLARE @tab3 TABLE (
  id int IDENTITY (1, 1) NOT NULL,
  CustomerName varchar(250),
  LoanReferenceNumber varchar(250),
  ProductCode varchar(250)
)

declare @CustomerName varchar(250), @LoanReferenceNumber varchar(250), @rnct int, @rtmax int ,@RunDate date, @year int

create  TABLE #tab1 (
  id int IDENTITY (1, 1) NOT NULL,
  cashflow float,
  period int
)



DECLARE @tab1 TABLE (
  id int IDENTITY (1, 1) NOT NULL,
  npv float
)

select @RunDate = RunDate ,@year=year(RunDate) from ifrs_setup_data


insert into @tab3 (CustomerName,LoanReferenceNumber,ProductCode)
select CustomerName,LoanReferenceNumber,ProductCode from credit_lgd_historyinformation


SELECT
  @rtmax = COUNT(*)
FROM @tab3
set @rnct = 1
WHILE @rnct <= @rtmax
--select @rtmax
--select * from @tab1
begin

select @CustomerName = CustomerName, @LoanReferenceNumber = LoanReferenceNumber from @tab3 where id =@rnct

declare @colleteralperiod as int , @eir float, @freq varchar(50) ,@actualeir float,@loanamount money,@npv float,@lgd float
select @colleteralperiod =  count(*) from credit_lgd_historyinformationdetails where loanreferencenumber =@LoanReferenceNumber
select @eir =  eir ,@freq = frequency, @loanamount =loanamount from credit_lgd_historyinformation where loanreferencenumber =@LoanReferenceNumber

truncate table #tab1 
insert into #tab1(cashflow,period)
select amount as cashflow, substring(attributefield,6,3) as period from credit_lgd_historyinformationdetails where loanreferencenumber =@LoanReferenceNumber

  --select cashflow,period from @tab
 if @freq = 'Monthly' 
 begin
  set @actualeir =@eir/12
  end
 if @freq = 'Quarterly' 
  begin
  set @actualeir =@eir/4
 end
 if @freq = 'Semi-Annual' 
  begin
  set @actualeir =@eir/2
  end
if @freq = 'Yearly' 
  begin
  set @actualeir =@eir
  end



insert into @tab1(npv)
SELECT  wct.NPV(@actualeir, cashflow, period) as NPV
FROM (
         select cashflow,period from #tab1
            ) n(cashflow, period)

select * from #tab1
set @year = @year
select @npv = npv from @tab1

set @lgd = (@loanamount -@npv)/@loanamount

  --select @colleteralperiod,@eir,@freq,@actualeir,@loanamount,@npv,@lgd


  delete from credit_customerloanlgd_history_final  where LoanReferenceNumber =@LoanReferenceNumber
  insert into credit_customerloanlgd_history_final(CustomerName, LoanReferenceNumber, ProductCode, ProductName,
   LGD, Date, Year, Variable1, Variable2, Variable3, Variable4, Variable5, Variable6, Variable7)
   select a.CustomerName, a.LoanReferenceNumber,a.ProductCode, a.ProductName, @lgd ,a.MaturityDate,
    case when  year(a.maturitydate) < @year then
    year(a.maturitydate)
	else
	@year end as Year,
	b.GDP,b.Unemployement,b.Inflation,b.erosion,b.ForegnEx,b.Others,b.otherfactor
	 from credit_lgd_historyinformation  a left outer join ifrs_macroeconomic_variables_year b on 
   case when  year(a.maturitydate) < @year then
    year(a.maturitydate)
	else
	@year end  = b.year   where a.loanreferencenumber =@LoanReferenceNumber

	  SET @rnct = @rnct + 1;
   end

   end
	--select * from credit_customerloanlgd_history_final

