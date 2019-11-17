



CREATE proc [dbo].[spp_CalculateIndividualCustomerLoanPD_History_Test3]--9,12

--(
--@CustomerId int,
--@LoanApplicationId int
--)
as

begin

declare @CustomerName varchar(250), @LoanReferenceNumber varchar(250), @rnct int, @rtmax int ,@ProductCode varchar(250) ,@rnct4 int, @rtmax4 int,@rnct5 int, @rtmax5 int
declare @count as int,@count1 as int,@count2 as int
declare @default as int = 8
declare @diff as int 
Declare @AverageCoefficients as float
Declare @Intercepts as float
Declare @sumpd as float
Declare @pd as float,@RunDate date,@runyear int


DECLARE @tab1 TABLE (
  id int IDENTITY (1, 1) NOT NULL,
  CustomerName varchar(250),
  LoanReferenceNumber varchar(250),
  ProductCode varchar(250)
)


create  TABLE #tab1 (
  id int IDENTITY (1, 1) NOT NULL,
  CustomerName varchar(250),
  LoanReferenceNumber varchar(250),
  ProductCode varchar(250)
)


DECLARE @tab4 TABLE (
  id4 int IDENTITY (1, 1) NOT NULL,
  CustomerName4 varchar(250),
  LoanReferenceNumber4 varchar(250),
  ProductCode4 varchar(250)
)

DECLARE @tab5 TABLE (
  id5 int IDENTITY (1, 1) NOT NULL,
  CustomerName5 varchar(250),
  LoanReferenceNumber5 varchar(250),
  ProductCode5 varchar(250)
)


DECLARE @tab2 TABLE (
  id int IDENTITY (1, 1) NOT NULL,
  Stat_name varchar(20),
  idx int,
  stat_val float
)

DECLARE @tab3 TABLE (
  id int IDENTITY (1, 1) NOT NULL,
  Stat_name varchar(20),
  idx int,
  stat_val float
)


select @RunDate = RunDate ,@runyear=year(RunDate) from ifrs_setup_data

insert into @tab5(ProductCode5)
select distinct ProductCode from credit_individualapplicationscorecard_history


SELECT
  @rtmax5 = COUNT(*)
FROM @tab5
set @rnct5 = 1
WHILE @rnct5 <= @rtmax5

begin
select @productcode = ProductCode5 from @tab5 where id5 =@rnct5
select top 1 @LoanReferenceNumber = LoanReferenceNumber from credit_individualapplicationscorecarddetails_history where ProductCode =@productcode

select @count2  = count(*) from credit_individualapplicationscorecarddetails_history where LoanReferenceNumber =@LoanReferenceNumber

exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table @count2

truncate table #tab1 
insert into #tab1 (CustomerName,LoanReferenceNumber,ProductCode)
select CustomerName,LoanReferenceNumber,ProductCode from credit_individualapplicationscorecard_history where ProductCode =@productcode
--select top  @LoanReferenceNumber = LoanReferenceNumber from @tab1 
--select @count1   = count(*) from credit_individualapplicationscorecarddetails_history where LoanReferenceNumber =@LoanReferenceNumber

--insert into @tab1 (ProductCode)
--select distinct ProductCode from credit_individualapplicationscorecard_history
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 21

select * from #tab1

SELECT
  @rtmax = COUNT(*)
FROM #tab1
set @rnct = 1
WHILE @rnct <= @rtmax
--select @rtmax
--select * from @tab1
begin

select @CustomerName = CustomerName, @LoanReferenceNumber = LoanReferenceNumber from #tab1 where id =@rnct

--select @ProductCode = ProductCode from @tab1 where id =@rnct

select @count   = count(*) from credit_individualapplicationscorecarddetails_history where LoanReferenceNumber =@LoanReferenceNumber
--select @count   = count(*) from credit_individualapplicationscorecarddetails_history where ProductCode =@ProductCode
set @diff = @count -@default
declare @select varchar(max)
set @select = 'select '



select @select=@select+COLUMN_NAME+','
from information_schema.columns
where table_name = 'credit_individualapplicationscorecard_history' and ordinal_position > @default and ordinal_position <= @count + @default
set @select=LEFT(@select,LEN(@select)-1)+' from credit_individualapplicationscorecard_history where LoanReferenceNumber = '  +''''+ 
				cast(  @LoanReferenceNumber  as varchar(250))+''' '


if(@count2 = 2)
begin
 insert into credit_Regression_Variable(Field1,Field2)
exec(@select)
end
if(@count2 = 3)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3)
exec(@select)
end
if(@count2 = 4)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4)
exec(@select)
end
if(@count2 = 5)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5)
exec(@select)
end
if(@count2 = 6)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6)
exec(@select)
end
if(@count2 = 7)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7)
exec(@select)
end
if(@count2 = 8)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8)
exec(@select)
end
if(@count2 = 9)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9)
exec(@select)
end
if(@count2 = 10)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9,Field10)
exec(@select)
end
if(@count2 = 11)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 )
exec(@select)
end
if(@count2 = 12)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12)
exec(@select)
end
if(@count2 = 13)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 )
exec(@select)
end
if(@count2 = 14)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14)
exec(@select)
end
if(@count2 = 15)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15)
exec(@select)
end
if(@count2 = 16)

begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16)
exec(@select)
end
if(@count2 = 17)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17)
exec(@select)
end
if(@count2 = 18)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18)
exec(@select)
end
if(@count2 = 19)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19)
exec(@select)
end
if(@count2 = 20)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20)
exec(@select)
end
if(@count2 = 21)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21)
exec(@select)
end
if(@count2 = 22)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22)
exec(@select)
end
if(@count2 = 23)

begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23)
exec(@select)
end
if(@count2 = 24)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24)
exec(@select)
end
if(@count2 = 25)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25)
exec(@select)
end
if(@count2 = 26)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26)
exec(@select)
end
if(@count2 = 27)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27)
exec(@select)
end
if(@count2 = 28)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28)
exec(@select)
end
if(@count2 = 29)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29)
exec(@select)
end
if(@count2 = 30)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
exec(@select)
end


--insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21)
--exec(@select)
 SET @rnct = @rnct + 1;
 end
 select * from credit_Regression_Variable



--select @select
begin
delete from @tab2
insert into @tab2(Stat_name,idx,stat_val)

   SELECT
   *
FROM
   wct.LOGIT(
   'SELECT
    *
    FROM
       credit_Regression_Variable'
   ,cast(@count as int)
   )
   end
   select * from @tab2
--exec spp_credit_Regression_Variable

begin
   delete from @tab3
   insert into @tab3(Stat_name,idx,stat_val)
   select Stat_name,idx,stat_val from @tab2 where Stat_name = 'b' and idx<>0
   end
   select @Intercepts = stat_val from @tab2 where Stat_name = 'b' and idx = 0 
   --select * from @tab3

   begin
 insert into @tab4 (CustomerName4,LoanReferenceNumber4,ProductCode4)
select CustomerName,LoanReferenceNumber,ProductCode from credit_individualapplicationscorecard_history where ProductCode =@ProductCode
end
   SELECT
  @rtmax4 = COUNT(*)
FROM @tab4
set @rnct4 = 1
WHILE @rnct4 <= @rtmax4
--select @rtmax
--select * from @tab4
	begin
					select @CustomerName = CustomerName4, @LoanReferenceNumber = LoanReferenceNumber4 from @tab4 where id4 =@rnct4
					--set @LoanReferenceNumber = '10002'

			begin
			   delete from credit_customerloanpd_history where LoanReferenceNumber =@LoanReferenceNumber
			   insert into credit_customerloanpd_history(CreditRiskAttribute, AttributeField, Score, Coefficients, 
			   AverageCoefficients, Year,Date,CustomerName,LoanReferenceNumber,ProductCode,ProductName)
			   select isnull(c.CreditRiskAttribute, 'Intercepts'),c.AttributeField,b.Score, 
			   a.stat_val as Coeff,a.stat_val*isnull(b.Score ,1)as pd ,
			   (case when YEAR(b.MaturityDate) < @runyear then  
			   YEAR(b.MaturityDate)
			   else
			   @runyear end) as Year,
     
			   (b.maturitydate) as date,b.CustomerName,b.LoanReferenceNumber,b.ProductCode, b.ProductName
				from @tab3 a left outer join credit_individualapplicationscorecarddetails_history b on a.idx = cast(SUBSTRING(b.AttributeField,6,2) as int)
			   left outer join credit_creditriskattribute c on b.AttributeField = c.AttributeField 
			   where b.LoanReferenceNumber =@LoanReferenceNumber
				order by  c.AttributeField

			update credit_customerloanpd_history set PD = Coefficients * AverageCoefficients where LoanReferenceNumber =@LoanReferenceNumber ;

			   select @AverageCoefficients =  sum(AverageCoefficients) from  credit_customerloanpd_history where LoanReferenceNumber =@LoanReferenceNumber

			   set @sumpd = @AverageCoefficients + @Intercepts

			   set @pd = (exp(@sumpd)/ (1 + exp(@sumpd)))

				--set @pd = (@sumpd/ 1 + @sumpd)
    
			  update credit_customerloanpd_history set PD = @pd where LoanReferenceNumber =@LoanReferenceNumber ;
			  SET @rnct4 = @rnct4 + 1;
			end
		begin
			   delete from credit_customerloanpd_history_final  where LoanReferenceNumber =@LoanReferenceNumber
			   insert into credit_customerloanpd_history_final( LoanReferenceNumber, ProductCode, ProductName , PD, Date, Year,
				CustomerName,Variable1,Variable2,Variable3,Variable4,Variable5,Variable6,Variable7)
			   select top 1  LoanReferenceNumber, ProductCode, ProductName, PD, Date, a.Year,
			   CustomerName, b.GDP,b.Unemployement,b.Inflation,b.erosion,b.ForegnEx,b.Others,b.otherfactor from credit_customerloanpd_history a left outer join 
			   ifrs_macroeconomic_variables_year b on a.Year = b.Year
			   where LoanReferenceNumber =@LoanReferenceNumber
		end
	 
	end
	 SET @rnct5 = @rnct5 + 1;
 end

 exec spp_credit_Regression_Variable
end



