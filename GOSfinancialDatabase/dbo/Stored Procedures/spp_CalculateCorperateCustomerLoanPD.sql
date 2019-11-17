




--ALTER proc [dbo].[spp_CalculateCorperateCustomerLoanPD]--9,12

--(
--@CustomerId int,
--@LoanApplicationId int
--)
--as

--begin

--declare @count as int
--declare @default as int = 4
--declare @diff as int 
--Declare @AverageCoefficients as float
--Declare @Intercepts as float
--Declare @sumpd as float
--Declare @pd as float,  @sqlStm varchar(max)
--DECLARE @tab2 TABLE (
--  id int IDENTITY (1, 1) NOT NULL,
--  Stat_name varchar(20),
--  idx int,
--  stat_val float
--)

--DECLARE @tab3 TABLE (
--  id int IDENTITY (1, 1) NOT NULL,
--  Stat_name varchar(20),
--  idx int,
--  stat_val float
--)

--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 30

--select @count   = count(*) from credit_corporateapplicationscorecarddetails where LoanApplicationId =@LoanApplicationId
--set @diff = @count -@default
--declare @select varchar(max)
--set @select = 'select '

--select @select=@select+COLUMN_NAME+','
--from information_schema.columns
--where table_name = 'credit_corporateapplicationscorecard' and ordinal_position > @default and ordinal_position <= @count + @default
--set @select=LEFT(@select,LEN(@select)-1)+' from credit_corporateapplicationscorecard where LoanApplicationId = '  +''''+ 
--				cast(  @LoanApplicationId  as varchar(6))+''' '

----SET @sqlStm = 'Drop table  credit_Regression_Variable'
----exec @sqlStm

--exec spp_credit_Regression_Variable
--if(@count = 2)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 2
-- insert into credit_Regression_Variable(Field1,Field2)
--exec(@select)
--end
--if(@count = 3)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 3
-- insert into credit_Regression_Variable(Field1,Field2, Field3)
--exec(@select)
--end
--if(@count = 4)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 4
-- insert into credit_Regression_Variable(Field1,Field2, Field3, Field4)
--exec(@select)
--end
--if(@count = 5)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 5
-- insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5)
--exec(@select)
--end
--if(@count = 6)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 6
-- insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6)
--exec(@select)
--end
--if(@count = 7)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 7
-- insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7)
--exec(@select)
--end
--if(@count = 8)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 8
-- insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8)
--exec(@select)
--end
--if(@count = 9)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 9
-- insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9)
--exec(@select)
--end
--if(@count = 10)
--begin
----exec (@sqlStm)
--exec spp_credit_Regression_Variable

-- EXEC spp_Dummy_table 10
-- insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9,Field10)
--exec(@select)
--end
--if(@count = 11)
--begin
----exec (@sqlStm)
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 11
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 )
--exec(@select)
--end
--if(@count = 12)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 12
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12)
--exec(@select)
--end
--if(@count = 13)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 13
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 )
--exec(@select)
--end
--if(@count = 14)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 14
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14)
--exec(@select)
--end
--if(@count = 15)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 15
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15)
--exec(@select)
--end
--if(@count = 16)

--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 16
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16)
--exec(@select)
--end
--if(@count = 17)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 17
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17)
--exec(@select)
--end
--if(@count = 18)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 18
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18)
--exec(@select)
--end
--if(@count = 19)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 19
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19)
--exec(@select)
--end
--if(@count = 20)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 20
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20)
--exec(@select)
--end
--if(@count = 21)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 21
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21)
--exec(@select)
--end
--if(@count = 22)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 22
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22)
--exec(@select)
--end
--if(@count = 23)

--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 23
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23)
--exec(@select)
--end
--if(@count = 24)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 24
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24)
--exec(@select)
--end
--if(@count = 25)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 25
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25)
--exec(@select)
--end
--if(@count = 26)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 26
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26)
--exec(@select)
--end
--if(@count = 27)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 27
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27)
--exec(@select)
--end
--if(@count = 28)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 28
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28)
--exec(@select)
--end
--if(@count = 29)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 29
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29)
--exec(@select)
--end
--if(@count = 30)
--begin
--exec spp_credit_Regression_Variable
-- EXEC spp_Dummy_table 30
-- insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
--exec(@select)
--end


--insert into @tab2(Stat_name,idx,stat_val)

--   SELECT
--   *
--FROM
--   wct.LOGIT(
--   'SELECT
--    *
--    FROM
--       credit_Regression_Variable'
--   ,@count
--   )

--exec spp_credit_Regression_Variable
--   insert into @tab3(Stat_name,idx,stat_val)
--   select Stat_name,idx,stat_val from @tab2 where Stat_name = 'b'

--   select @Intercepts = stat_val from @tab2 where Stat_name = 'b' and idx = 0 
--   select * from @tab2

--   delete from credit_customerloanpd where CustomerId =@CustomerId and LoanApplicationId =@LoanApplicationId
--   insert into credit_customerloanpd(CreditRiskAttribute, CustomerId, LoanApplicationId, AttributeField, Score, Coefficients, AverageCoefficients, Date)
--   select isnull(c.CreditRiskAttribute, 'Intercepts'),isnull(b.CustomerId,@CustomerId), isnull(b.LoanApplicationId,@LoanApplicationId),c.AttributeField,b.Score, 
--   a.stat_val as Coeff,a.stat_val*isnull(b.Score ,1)as pd , getdate() as date from @tab3 a left outer join credit_corporateapplicationscorecarddetails b on a.idx = cast(SUBSTRING(b.AttributeField,6,2) as int)
--   left outer join credit_creditriskattribute c on b.AttributeField = c.AttributeField
--   where  b.CustomerId =@CustomerId and b.LoanApplicationId =@LoanApplicationId
--		order by  c.AttributeField

--   select @AverageCoefficients =  sum(AverageCoefficients) from  credit_customerloanpd where CustomerId =@CustomerId and LoanApplicationId =@LoanApplicationId

--   set @sumpd = @AverageCoefficients + @Intercepts

--   set @pd = (exp(@sumpd)/ (1 + exp(@sumpd)))


--   update credit_loanapplication set PD = @pd where LoanApplicationId = @LoanApplicationId and CustomerId =@CustomerId ;

--   exec spp_credit_Regression_Variable

--   end

CREATE proc [dbo].[spp_CalculateCorperateCustomerLoanPD]--1053,2076

(
@LoanCustomerId int,
@ApplicationId int
)
as

begin

declare @CustomerId int, @LoanApplicationId int, @rnct int, @rtmax int ,@ProductCode varchar(250) ,@rnct4 int, @rtmax4 int,@rnct5 int, @rtmax5 int
declare @count as int,@count1 as int,@count2 as int,@RecordCount as int 
declare @default as int = 4
declare @diff as int 
Declare @AverageCoefficients as float
Declare @Intercepts as float
Declare @sumpd as float,@ProductId int
Declare @pd as float,@RunDate date,@runyear int
declare @max int,@max2 int,@productAttributeCount int,@productAttributeDiff int,@count3 int


DECLARE @tab1 TABLE (
  id int IDENTITY (1, 1) NOT NULL,
  CustomerName varchar(250),
  LoanApplicationId varchar(250),
  ProductCode varchar(250)
)


create  TABLE #countTab (
id int IDENTITY (1, 1) NOT NULL,
  maxcount int
)

create  TABLE #Tab3 (
id int IDENTITY (1, 1) NOT NULL,
  FieldName varchar(50),
  Score float
)

create  TABLE #tab1 (
  id int IDENTITY (1, 1) NOT NULL,
  CustomerId int,
  LoanApplicationId int,
  ProductId int
)

create  TABLE #tab2 (
  id int IDENTITY (1, 1) NOT NULL,
  Field1 float,
  Field2 float,
  Field3 float,
  Field4 float,
  Field5 float,
  Field6 float,
  Field7 float,
  Field8 float,
  Field9 float,
  Field10 float,
  Field11 float,
  Field12 float,
  Field13 float,
  Field14 float,
  Field15 float,
  Field16 float,
  Field17 float,
  Field18 float,
  Field19 float,
  Field20 float,
  Field21 float,
  Field22 float,
  Field23 float,
  Field24 float,
  Field25 float,
  Field26 float,
  Field27 float,
  Field28 float,
  Field29 float,
  Field30 float,
)


DECLARE @tab4 TABLE (
  id4 int IDENTITY (1, 1) NOT NULL,
  CustomerId4 int,
  LoanApplicationId4 int,
  ProductId4 int
)

DECLARE @tab5 TABLE (
  id5 int IDENTITY (1, 1) NOT NULL,
  CustomerName5 varchar(250),
  LoanApplicationId5 varchar(250),
  ProductCode5 varchar(250),
  ProductId5 int
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


--select @RunDate = RunDate ,@runyear=year(RunDate) from ifrs_setup_data

insert into @tab5(ProductId5)
select distinct ProductId from credit_individualapplicationscorecard where CustomerId = @LoanCustomerId and LoanApplicationId = @ApplicationId
--select @ProductCode = product from credit_product where ProductCode ='CAR001'

SELECT
  @rtmax5 = COUNT(*)
FROM @tab5
set @rnct5 = 1
WHILE @rnct5 <= @rtmax5

begin
select @ProductId = ProductId5 from @tab5 where id5 =@rnct5

select @productAttributeCount = count(*) from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2

set @productAttributeCount = @productAttributeCount + 1 
exec spp_credit_Regression_Variable;
EXEC spp_Dummy_table @productAttributeCount;

exec spp_credit_Regression_Variable1;
EXEC spp_Dummy1_table @productAttributeCount;

--exec spp_credit_Regression_Variable;
--EXEC spp_Dummy_table 6;

--exec spp_credit_Regression_Variable1;
--EXEC spp_Dummy1_table 6;


truncate table #tab1 
insert into #tab1 (CustomerId,LoanApplicationId,ProductId)
select a.CustomerId,a.LoanApplicationId,a.ProductId from credit_individualapplicationscorecard a left outer join credit_loancustomer b on a.CustomerId = b.CustomerId
left outer join credit_loanapplication c on a.LoanApplicationId = c.LoanApplicationId
where a.ProductId =@ProductId and b.CustomerTypeId=1 and c.LoanApplicationStatusId > 3

select @RecordCount = count(*) from #tab1
select * from #tab1

if(@RecordCount < @productAttributeCount )
 RAISERROR ('The number of loans are less than the number of Attributes for this Product ' , 15, 6) 
 exec spp_credit_Regression_Variable;
 EXEC spp_Dummy_table 30;

exec spp_credit_Regression_Variable1;
EXEC spp_Dummy1_table 30;
   RETURN 
SELECT
  @rtmax = COUNT(*)
FROM #tab1
set @rnct = 1
WHILE @rnct <= @rtmax
begin

select @CustomerId = CustomerId, @LoanApplicationId = LoanApplicationId from #tab1 where id =@rnct
truncate table #countTab
insert into #countTab(maxcount)
SELECT
  ((CASE WHEN Field1 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field2 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field3 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field4 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field5 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field6 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field7 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field8 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field9 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field10 IS NULL THEN 1 ELSE 0 END)
  +(CASE WHEN Field11 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field12 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field13 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field14 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field15 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field16 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field17 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field18 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field19 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field20 IS NULL THEN 1 ELSE 0 END)
  +(CASE WHEN Field21 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field22 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field23 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field24 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field25 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field26 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field27 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field28 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field29 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN Field30 IS NULL THEN 1 ELSE 0 END)) AS sum_of_nulls
FROM credit_individualapplicationscorecard where LoanApplicationId =@LoanApplicationId

select * from #countTab
select @max2 = maxcount from #countTab 
set @max = 30-@max2
--select * from @countTab
select @productAttributeCount = count(*) from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2

set @productAttributeDiff = @productAttributeCount - @max
set @count3 = @max + @productAttributeDiff

if(@productAttributeDiff< 0)
begin
set @count3 =@max
end 
else
begin
set @count3 =@count3
end
--select @count3

declare @sql varchar(max)
set @sql = 'select '
select @sql=@sql+COLUMN_NAME+','
from information_schema.columns
where table_name = 'credit_individualapplicationscorecard' and ordinal_position > @default and ordinal_position <= @count3 + @default
set @sql=LEFT(@sql,LEN(@sql)-1)+' from credit_individualapplicationscorecard where LoanApplicationId = '  +''''+ 
				cast(  @LoanApplicationId  as varchar(250))+''' '
select @LoanApplicationId

if(@productAttributeCount <> @max)

begin

if (@productAttributeDiff=1)
begin
if(@count3 = 2)
begin
 insert into credit_Regression_Variable1(Field1,Field2)
exec(@sql)
update credit_individualapplicationscorecard set field2 = field1 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 3)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3)
exec(@sql)
update credit_individualapplicationscorecard set field3 = field2 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 4)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4)
exec(@sql)
update credit_individualapplicationscorecard set field4 = field3 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 5)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5)
exec(@sql)
update credit_individualapplicationscorecard set field5 = field4 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 6)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6)
exec(@sql)
update credit_individualapplicationscorecard set field6 = field5 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 7)
begin
insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7)
exec(@sql)
update credit_individualapplicationscorecard set field7 = field6 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 8)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8)
exec(@sql)
update credit_individualapplicationscorecard set field8 = field7 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 9)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9)
exec(@sql)
update credit_individualapplicationscorecard set field9 = field8 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 10)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9,Field10)
exec(@sql)
update credit_individualapplicationscorecard set field10 = field9 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 11)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 )
exec(@sql)
update credit_individualapplicationscorecard set field11 = field10 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 12)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12)
exec(@sql)
update credit_individualapplicationscorecard set field12 = field11 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 13)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 )
exec(@sql)
update credit_individualapplicationscorecard set field13 = field12 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 14)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14)
exec(@sql)
update credit_individualapplicationscorecard set field14 = field13 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 15)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15)
exec(@sql)
update credit_individualapplicationscorecard set field15 = field14 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 16)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16)
exec(@sql)
update credit_individualapplicationscorecard set field16 = field15 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 17)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17)
exec(@sql)
update credit_individualapplicationscorecard set field17 = field16 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 18)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18)
exec(@sql)
update credit_individualapplicationscorecard set field18 = field17 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 19)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19)
exec(@sql)
update credit_individualapplicationscorecard set field19 = field18 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 20)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20)
exec(@sql)
update credit_individualapplicationscorecard set field20 = field19 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 21)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21)
exec(@sql)
update credit_individualapplicationscorecard set field21 = field20 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 22)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22)
exec(@sql)
update credit_individualapplicationscorecard set field22 = field21 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 23)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23)
exec(@sql)
update credit_individualapplicationscorecard set field23 = field22 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 24)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24)
exec(@sql)
update credit_individualapplicationscorecard set field24 = field23 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 25)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25)
exec(@sql)
update credit_individualapplicationscorecard set field25 = field24 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 26)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26)
exec(@sql)
update credit_individualapplicationscorecard set field26 = field25 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 27)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27)
exec(@sql)
update credit_individualapplicationscorecard set field27 = field26 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 28)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28)
exec(@sql)
update credit_individualapplicationscorecard set field28 = field27 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 29)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29)
exec(@sql)

update credit_individualapplicationscorecard set field29 = field28 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 30)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
exec(@sql)
update credit_individualapplicationscorecard set field30 = field29 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field29 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field29') where LoanApplicationId =@LoanApplicationId
end


select * from credit_Regression_Variable1 

end

if (@productAttributeDiff=2)
begin
--if(@count3 = 2)
--begin
-- insert into credit_Regression_Variable1(Field1,Field2)
--exec(@sql)
--update credit_individualapplicationscorecard set field2 = field1 where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanApplicationId =@LoanApplicationId
--end
if(@count3 = 3)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3)
exec(@sql)
update credit_individualapplicationscorecard set field3 = field1 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 4)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4)
exec(@sql)
update credit_individualapplicationscorecard set field4 = field2 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 5)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5)
exec(@sql)
update credit_individualapplicationscorecard set field5 = field3 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 6)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6)
exec(@sql)
update credit_individualapplicationscorecard set field6 = field4 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 7)
begin
insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7)
exec(@sql)
update credit_individualapplicationscorecard set field7 = field5 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 8)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8)
exec(@sql)
update credit_individualapplicationscorecard set field8 = field6 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 9)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9)
exec(@sql)
update credit_individualapplicationscorecard set field9 = field7 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 10)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9,Field10)
exec(@sql)
update credit_individualapplicationscorecard set field10 = field8 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 11)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 )
exec(@sql)
update credit_individualapplicationscorecard set field11 = field9 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 12)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12)
exec(@sql)
update credit_individualapplicationscorecard set field12 = field10 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 13)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 )
exec(@sql)
update credit_individualapplicationscorecard set field13 = field11 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 14)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14)
exec(@sql)
update credit_individualapplicationscorecard set field14 = field12 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 15)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15)
exec(@sql)
update credit_individualapplicationscorecard set field15 = field13 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 16)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16)
exec(@sql)
update credit_individualapplicationscorecard set field16 = field14 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 17)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17)
exec(@sql)
update credit_individualapplicationscorecard set field17 = field15 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 18)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18)
exec(@sql)
update credit_individualapplicationscorecard set field18 = field16 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 19)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19)
exec(@sql)
update credit_individualapplicationscorecard set field19 = field17 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 20)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20)
exec(@sql)
update credit_individualapplicationscorecard set field20 = field18 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 21)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21)
exec(@sql)
update credit_individualapplicationscorecard set field21 = field19 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 22)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22)
exec(@sql)
update credit_individualapplicationscorecard set field22 = field20 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 23)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23)
exec(@sql)
update credit_individualapplicationscorecard set field23 = field21 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 24)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24)
exec(@sql)
update credit_individualapplicationscorecard set field24 = field22 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 25)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25)
exec(@sql)
update credit_individualapplicationscorecard set field25 = field23 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 26)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26)
exec(@sql)
update credit_individualapplicationscorecard set field26 = field24 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 27)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27)
exec(@sql)
update credit_individualapplicationscorecard set field27 = field25 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 28)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28)
exec(@sql)
update credit_individualapplicationscorecard set field28 = field26 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 29)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29)
exec(@sql)

update credit_individualapplicationscorecard set field29 = field27 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 30)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
exec(@sql)
update credit_individualapplicationscorecard set field30 = field28 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field29 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field29') where LoanApplicationId =@LoanApplicationId
end


select * from credit_Regression_Variable1 

end

if (@productAttributeDiff=3)
begin
--if(@count3 = 2)
--begin
-- insert into credit_Regression_Variable1(Field1,Field2)
--exec(@sql)
--update credit_individualapplicationscorecard set field2 = field1 where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanApplicationId =@LoanApplicationId
--end
--if(@count3 = 3)
--begin
-- insert into credit_Regression_Variable1(Field1,Field2, Field3)
--exec(@sql)
--update credit_individualapplicationscorecard set field3 = field1 where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanApplicationId =@LoanApplicationId
--end
if(@count3 = 4)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4)
exec(@sql)
update credit_individualapplicationscorecard set field4 = field1 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 5)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5)
exec(@sql)
update credit_individualapplicationscorecard set field5 = field2 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 6)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6)
exec(@sql)
update credit_individualapplicationscorecard set field6 = field3 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 7)
begin
insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7)
exec(@sql)
update credit_individualapplicationscorecard set field7 = field4 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 8)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8)
exec(@sql)
update credit_individualapplicationscorecard set field8 = field5 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 9)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9)
exec(@sql)
update credit_individualapplicationscorecard set field9 = field6 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 10)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9,Field10)
exec(@sql)
update credit_individualapplicationscorecard set field10 = field7 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 11)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 )
exec(@sql)
update credit_individualapplicationscorecard set field11 = field8 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 12)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12)
exec(@sql)
update credit_individualapplicationscorecard set field12 = field9 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 13)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 )
exec(@sql)
update credit_individualapplicationscorecard set field13 = field10 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 14)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14)
exec(@sql)
update credit_individualapplicationscorecard set field14 = field11 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 15)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15)
exec(@sql)
update credit_individualapplicationscorecard set field15 = field12 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 16)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16)
exec(@sql)
update credit_individualapplicationscorecard set field16 = field13 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 17)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17)
exec(@sql)
update credit_individualapplicationscorecard set field17 = field14 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 18)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18)
exec(@sql)
update credit_individualapplicationscorecard set field18 = field15 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 19)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19)
exec(@sql)
update credit_individualapplicationscorecard set field19 = field16 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 20)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20)
exec(@sql)
update credit_individualapplicationscorecard set field20 = field17 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 21)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21)
exec(@sql)
update credit_individualapplicationscorecard set field21 = field18 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 22)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22)
exec(@sql)
update credit_individualapplicationscorecard set field22 = field19 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 23)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23)
exec(@sql)
update credit_individualapplicationscorecard set field23 = field20 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 24)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24)
exec(@sql)
update credit_individualapplicationscorecard set field24 = field21 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 25)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25)
exec(@sql)
update credit_individualapplicationscorecard set field25 = field22 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 26)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26)
exec(@sql)
update credit_individualapplicationscorecard set field26 = field23 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 27)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27)
exec(@sql)
update credit_individualapplicationscorecard set field27 = field24 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 28)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28)
exec(@sql)
update credit_individualapplicationscorecard set field28 = field25 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 29)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29)
exec(@sql)

update credit_individualapplicationscorecard set field29 = field26 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 30)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
exec(@sql)
update credit_individualapplicationscorecard set field30 = field27 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field29 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field29') where LoanApplicationId =@LoanApplicationId
end


select * from credit_Regression_Variable1 

end

if (@productAttributeDiff=-1)
begin
--if(@count3 = 2)
--begin
-- insert into credit_Regression_Variable1(Field1,Field2)
--exec(@sql)
--update credit_individualapplicationscorecard set field1 = field2 where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanApplicationId =@LoanApplicationId
--end
if(@count3 = 3)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3)
exec(@sql)
update credit_individualapplicationscorecard set field2 = field3 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field3 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 4)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4)
exec(@sql)
update credit_individualapplicationscorecard set field3 = field4 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field4 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 5)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5)
exec(@sql)
update credit_individualapplicationscorecard set field4 = field5 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field5 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 6)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6)
exec(@sql)
update credit_individualapplicationscorecard set field5 = field6 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field6 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 7)
begin
insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7)
exec(@sql)
update credit_individualapplicationscorecard set field6 = field7 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field7 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 8)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8)
exec(@sql)
update credit_individualapplicationscorecard set field7 = field8 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field8 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 9)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9)
exec(@sql)
update credit_individualapplicationscorecard set field8 = field9 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field9 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 10)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9,Field10)
exec(@sql)
update credit_individualapplicationscorecard set field9 = field10 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field10 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 11)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 )
exec(@sql)
update credit_individualapplicationscorecard set field10 = field11 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field11 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 12)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12)
exec(@sql)
update credit_individualapplicationscorecard set field11 = field12 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field12 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 13)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 )
exec(@sql)
update credit_individualapplicationscorecard set field12 = field13 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field13 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 14)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14)
exec(@sql)
update credit_individualapplicationscorecard set field13 = field14 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field14 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 15)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15)
exec(@sql)
update credit_individualapplicationscorecard set field14 = field15 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field15 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 16)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16)
exec(@sql)
update credit_individualapplicationscorecard set field15 = field16 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field16 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 17)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17)
exec(@sql)
update credit_individualapplicationscorecard set field16 = field17 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field17 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 18)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18)
exec(@sql)
update credit_individualapplicationscorecard set field17 = field18 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field18 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 19)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19)
exec(@sql)
update credit_individualapplicationscorecard set field18 = field19 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field19 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 20)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20)
exec(@sql)
update credit_individualapplicationscorecard set field19 = field20 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field20 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 21)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21)
exec(@sql)
update credit_individualapplicationscorecard set field20 = field21 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field21 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 22)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22)
exec(@sql)
update credit_individualapplicationscorecard set field21 = field22 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field22 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 23)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23)
exec(@sql)
update credit_individualapplicationscorecard set field22 = field23 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field23 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 24)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24)
exec(@sql)
update credit_individualapplicationscorecard set field23 = field24 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field24 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 25)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25)
exec(@sql)
update credit_individualapplicationscorecard set field24 = field25 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field25 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 26)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26)
exec(@sql)
update credit_individualapplicationscorecard set field25 = field26 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field26 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 27)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27)
exec(@sql)
update credit_individualapplicationscorecard set field26 = field27 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field27 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 28)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28)
exec(@sql)
update credit_individualapplicationscorecard set field27 = field28 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field28 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 29)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29)
exec(@sql)

update credit_individualapplicationscorecard set field28 = field29 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field29 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 30)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
exec(@sql)
update credit_individualapplicationscorecard set field29 = field30 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field30 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field29 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field29') where LoanApplicationId =@LoanApplicationId
end


select * from credit_Regression_Variable1 

end

if (@productAttributeDiff=-2)
begin
--if(@count3 = 2)
--begin
-- insert into credit_Regression_Variable1(Field1,Field2)
--exec(@sql)
--update credit_individualapplicationscorecard set field2 = field1 where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanApplicationId =@LoanApplicationId
--end
if(@count3 = 3)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3)
exec(@sql)
update credit_individualapplicationscorecard set field1 = field3 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field2 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field3 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 4)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4)
exec(@sql)
update credit_individualapplicationscorecard set field2 = field4 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field3 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field4 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 5)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5)
exec(@sql)
update credit_individualapplicationscorecard set field3 = field5 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field4 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field5 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 6)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6)
exec(@sql)
update credit_individualapplicationscorecard set field4 = field6 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field5 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field6 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 7)
begin
insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7)
exec(@sql)
update credit_individualapplicationscorecard set field5 = field7 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field6 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field7 = null where LoanApplicationId =@LoanApplicationId

--update credit_individualapplicationscorecard set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 8)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8)
exec(@sql)
update credit_individualapplicationscorecard set field6 = field8 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field7 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field8 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 9)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9)
exec(@sql)
update credit_individualapplicationscorecard set field7 = field9 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field8 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field9 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 10)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9,Field10)
exec(@sql)
update credit_individualapplicationscorecard set field8 = field10 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field9 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field10 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 11)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 )
exec(@sql)
update credit_individualapplicationscorecard set field9 = field11 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field10 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field11 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 12)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12)
exec(@sql)
update credit_individualapplicationscorecard set field10 = field12 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field11 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field12 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 13)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 )
exec(@sql)
update credit_individualapplicationscorecard set field11 = field13 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field12 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field13 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 14)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14)
exec(@sql)
update credit_individualapplicationscorecard set field12 = field14 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field13 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field14 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 15)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15)
exec(@sql)
update credit_individualapplicationscorecard set field13 = field15 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field14 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field15 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 16)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16)
exec(@sql)
update credit_individualapplicationscorecard set field14 = field16 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field15 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field16 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 17)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17)
exec(@sql)
update credit_individualapplicationscorecard set field15 = field17 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field16 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field17 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 18)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18)
exec(@sql)
update credit_individualapplicationscorecard set field16 = field18 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field17 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field18 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 19)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19)
exec(@sql)
update credit_individualapplicationscorecard set field17 = field19 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field18 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field19 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 20)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20)
exec(@sql)
update credit_individualapplicationscorecard set field18 = field20 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field19 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field20 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 21)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21)
exec(@sql)
update credit_individualapplicationscorecard set field19 = field21 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field20 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field21 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 22)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22)
exec(@sql)
update credit_individualapplicationscorecard set field20 = field22 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field21 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field22 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 23)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23)
exec(@sql)
update credit_individualapplicationscorecard set field21 = field23 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field22 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field23 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 24)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24)
exec(@sql)
update credit_individualapplicationscorecard set field22 = field24 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field23 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field24 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 25)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25)
exec(@sql)
update credit_individualapplicationscorecard set field23 = field25 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field24 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field25 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 26)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26)
exec(@sql)
update credit_individualapplicationscorecard set field24 = field26 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field25 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field26 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 27)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27)
exec(@sql)
update credit_individualapplicationscorecard set field25 = field27 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field26 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field27 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 28)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28)
exec(@sql)
update credit_individualapplicationscorecard set field26 = field28 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field27 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field28 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 29)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29)
exec(@sql)

update credit_individualapplicationscorecard set field27 = field29 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field28 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field29 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 30)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
exec(@sql)
update credit_individualapplicationscorecard set field28 = field30 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field29 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field30 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field29 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field29') where LoanApplicationId =@LoanApplicationId
end


select * from credit_Regression_Variable1 

end

if (@productAttributeDiff=-3)
begin
--if(@count3 = 2)
--begin
-- insert into credit_Regression_Variable1(Field1,Field2)
--exec(@sql)
--update credit_individualapplicationscorecard set field2 = field1 where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanApplicationId =@LoanApplicationId
--end
--if(@count3 = 3)
--begin
-- insert into credit_Regression_Variable1(Field1,Field2, Field3)
--exec(@sql)
--update credit_individualapplicationscorecard set field3 = field1 where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanApplicationId =@LoanApplicationId
--end
if(@count3 = 4)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4)
exec(@sql)
update credit_individualapplicationscorecard set field1 = field4 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field2 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field3 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field4 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 5)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5)
exec(@sql)
update credit_individualapplicationscorecard set field2 = field5 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field3 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field4 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field5 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 6)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6)
exec(@sql)
update credit_individualapplicationscorecard set field3 = field6 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field4 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field5 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field6 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 7)
begin
insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7)
exec(@sql)
update credit_individualapplicationscorecard set field4 = field7 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field5 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field6 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field7 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 8)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8)
exec(@sql)
update credit_individualapplicationscorecard set field5 = field8 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field6 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field7 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field8 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 9)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9)
exec(@sql)
update credit_individualapplicationscorecard set field6 = field9 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field7 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field8 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field9 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 10)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9,Field10)
exec(@sql)
update credit_individualapplicationscorecard set field7 = field10 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field8 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field9 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field10 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 11)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 )
exec(@sql)
update credit_individualapplicationscorecard set field8 = field11 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field9 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field10 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field11 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 12)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12)
exec(@sql)
update credit_individualapplicationscorecard set field9 = field12 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field10 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field11 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field12 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 13)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 )
exec(@sql)
update credit_individualapplicationscorecard set field10 = field13 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field11 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field12 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field13 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 14)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14)
exec(@sql)
update credit_individualapplicationscorecard set field11 = field14 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field12 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field13 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field14 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 15)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15)
exec(@sql)
update credit_individualapplicationscorecard set field12 = field15 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field13 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field14 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field15 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 16)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16)
exec(@sql)
update credit_individualapplicationscorecard set field13 = field16 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field14 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field15 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field16 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 17)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17)
exec(@sql)
update credit_individualapplicationscorecard set field14 = field17 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field15 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field16 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field17 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 18)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18)
exec(@sql)
update credit_individualapplicationscorecard set field15 = field18 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field16 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field17 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field18 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 19)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19)
exec(@sql)
update credit_individualapplicationscorecard set field16 = field19 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field17 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field18 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field19 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 20)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20)
exec(@sql)
update credit_individualapplicationscorecard set field17 = field20 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field18 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field19 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field20 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 21)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21)
exec(@sql)
update credit_individualapplicationscorecard set field18 = field21 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field19 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field20 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field21 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 22)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22)
exec(@sql)
update credit_individualapplicationscorecard set field19 = field22 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field20 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field21 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field22 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 23)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23)
exec(@sql)
update credit_individualapplicationscorecard set field20 = field23 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field21 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field22 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field23 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 24)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24)
exec(@sql)
update credit_individualapplicationscorecard set field21 = field24 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field22 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field23 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field24 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 25)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25)
exec(@sql)
update credit_individualapplicationscorecard set field22 = field25 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field23 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field24 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field25 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 26)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26)
exec(@sql)
update credit_individualapplicationscorecard set field23 = field26 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field24 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field25 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field26 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 27)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27)
exec(@sql)
update credit_individualapplicationscorecard set field24 = field27 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field25 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field26 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field27 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 28)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28)
exec(@sql)
update credit_individualapplicationscorecard set field25 = field28 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field26 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field27 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field28 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 29)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29)
exec(@sql)

update credit_individualapplicationscorecard set field26 = field29 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field27 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field28 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field29 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanApplicationId =@LoanApplicationId
end
if(@count3 = 30)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
exec(@sql)
update credit_individualapplicationscorecard set field27 = field30 where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field28 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field29 = null where LoanApplicationId =@LoanApplicationId
update credit_individualapplicationscorecard set field30 = null where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanApplicationId =@LoanApplicationId
--update credit_individualapplicationscorecard set field29 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field29') where LoanApplicationId =@LoanApplicationId
end


select * from credit_Regression_Variable1 

end


end


declare @select varchar(max)
set @select = 'select '
select @select=@select+COLUMN_NAME+','
from information_schema.columns
where table_name = 'credit_individualapplicationscorecard' and ordinal_position > @default and ordinal_position <= @count3 + @default
set @select=LEFT(@select,LEN(@select)-1)+' from credit_individualapplicationscorecard where LoanApplicationId = '  +''''+ 
				cast(  @LoanApplicationId  as varchar(250))+''' '


if(@count3 = 2)
begin
 insert into credit_Regression_Variable(Field1,Field2)
exec(@select)
end
if(@count3 = 3)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3)
exec(@select)
end
if(@count3 = 4)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4)
exec(@select)
end
if(@count3 = 5)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5)
exec(@select)
end
if(@count3 = 6)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6)
exec(@select)
end
if(@count3 = 7)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7)
exec(@select)
end
if(@count3 = 8)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8)
exec(@select)
end
if(@count3 = 9)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9)
exec(@select)
end
if(@count3 = 10)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9,Field10)
exec(@select)
end
if(@count3 = 11)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 )
exec(@select)
end
if(@count3 = 12)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12)
exec(@select)
end
if(@count3 = 13)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 )
exec(@select)
end
if(@count3 = 14)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14)
exec(@select)
end
if(@count3 = 15)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15)
exec(@select)
end
if(@count3 = 16)

begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16)
exec(@select)
end
if(@count3 = 17)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17)
exec(@select)
end
if(@count3 = 18)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18)
exec(@select)
end
if(@count3 = 19)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19)
exec(@select)
end
if(@count3 = 20)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20)
exec(@select)
end
if(@count3 = 21)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21)
exec(@select)
end
if(@count3 = 22)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22)
exec(@select)
end
if(@count3 = 23)

begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23)
exec(@select)
end
if(@count3 = 24)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24)
exec(@select)
end
if(@count3 = 25)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25)
exec(@select)
end
if(@count3 = 26)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26)
exec(@select)
end
if(@count3 = 27)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27)
exec(@select)
end
if(@count3 = 28)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28)
exec(@select)
end
if(@count3 = 29)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29)
exec(@select)
end
if(@count3 = 30)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
exec(@select)
end

 SET @rnct = @rnct + 1;
 end
 --select * from credit_Regression_Variable1 
 select * from credit_Regression_Variable


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
begin
   delete from @tab3
   insert into @tab3(Stat_name,idx,stat_val)
   select Stat_name,idx,stat_val from @tab2 where Stat_name = 'b' and idx<>0
   end
   select @Intercepts = stat_val from @tab2 where Stat_name = 'b' and idx = 0 
   select * from @tab3
   begin
 insert into @tab4 (CustomerId4,LoanApplicationId4,ProductId4)
select CustomerId,LoanApplicationId,ProductId from credit_individualapplicationscorecard where ProductId =@ProductId and CustomerId = @CustomerId and LoanApplicationId = @ApplicationId
end
   SELECT
  @rtmax4 = COUNT(*)
FROM @tab4
set @rnct4 = 1
WHILE @rnct4 <= @rtmax4
	begin
					select @CustomerId = CustomerId4, @LoanApplicationId = LoanApplicationId4 from @tab4 where id4 =@rnct4

			begin
			truncate table #tab2
			insert into #tab2(Field1,Field2,Field3,Field4,Field5,Field6,Field7,Field8,Field9,Field10,Field11,Field12,Field13,Field14,Field15,Field16,Field17,Field18,Field19,Field20
			,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
			select Field1, Field2, Field3, Field4, Field5, Field6, Field7, Field8, Field9, Field10, Field11, Field12, Field13, Field14, Field15, Field16, Field17, Field18, Field19,
			 Field20, Field21, Field22, Field23, Field24, Field25, Field26, Field27, Field28, Field29, Field30 from credit_individualapplicationscorecard  where LoanApplicationId =@LoanApplicationId 

			 truncate table #Tab3
			 insert into #Tab3(FieldName,Score)
			 SELECT FieldName,Score FROM #tab2
				UNPIVOT
					(
					Score
					FOR FieldName IN (Field1,Field2,Field3,Field4,Field5,Field6,Field7,Field8,Field9,Field10,Field11,Field12,Field13,Field14,Field15,Field16,Field17,Field18,Field19,Field20
										,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
					) unpvt;


					select * from #Tab3

			delete from credit_customerloanpd where CustomerId =@CustomerId and LoanApplicationId =@LoanApplicationId
   insert into credit_customerloanpd(CreditRiskAttribute, CustomerId, LoanApplicationId, AttributeField, Score, Coefficients, AverageCoefficients, Date)
   select isnull(b.FieldName, 'Intercepts'),@CustomerId, @LoanApplicationId,b.FieldName,b.Score, 
  a.stat_val as Coeff,cast(a.stat_val as decimal(38,20)) *isnull(b.Score ,1)as pd , getdate() as date from @tab3 a left outer join #Tab3 b on a.idx = b.id
		order by  b.FieldName

   select @AverageCoefficients =  sum(AverageCoefficients) from  credit_customerloanpd where CustomerId =@CustomerId and LoanApplicationId =@LoanApplicationId

   set @sumpd = @AverageCoefficients + @Intercepts

   set @pd = (EXP(@sumpd)/ (1 + EXP(@sumpd)))
   update credit_loanapplication set PD = @pd where LoanApplicationId = @LoanApplicationId and CustomerId =@CustomerId
			  SET @rnct4 = @rnct4 + 1;
			end

	 
	end
	 SET @rnct5 = @rnct5 + 1;
 end
  exec spp_credit_Regression_Variable1
 exec spp_credit_Regression_Variable
end



