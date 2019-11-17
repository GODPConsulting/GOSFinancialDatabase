

create proc [dbo].[spp_CalculateCoperateCustomerLoanPD_Temp]--1002,4095

(
@CustomerId int,
@LoanApplicationId int
)
as

begin

declare @CustomerName varchar(250), @LoanReferenceNumber varchar(250), @rnct int, @rtmax int ,@ProductCode varchar(250) ,@rnct4 int, @rtmax4 int,@rnct5 int, @rtmax5 int,@TempProductCode varchar(250),@LoanApplication varchar(250)
declare @count as int,@count1 as int,@count2 as int
declare @default as int = 9
declare @diff as int 
Declare @AverageCoefficients as float
Declare @Intercepts as float
Declare @sumpd as float,@ProductId int
Declare @pd as float,@RunDate date,@runyear int
declare @max int,@max2 int,@productAttributeCount int,@productAttributeDiff int,@count3 int


DECLARE @tab1 TABLE (
  id int IDENTITY (1, 1) NOT NULL,
  CustomerName varchar(250),
  LoanReferenceNumber varchar(250),
  ProductCode varchar(250)
)


create  TABLE #countTab (
id int IDENTITY (1, 1) NOT NULL,
  maxcount int
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

create  TABLE #Tab3 (
id int IDENTITY (1, 1) NOT NULL,
  FieldName varchar(50),
  Score float
)

--DECLARE @LoanTable TABLE (
--  id int IDENTITY (1, 1) NOT NULL,
--  LoanAmount money,
--  CustomerName varchar(250),
--  LoanReferenceNumber varchar(250),
--  ProductCode varchar(250),
--  ProductName varchar(250),
--  EffectiveDate date,
--  MaturityDate date,
--  CustomerTypeId int,
--  Field1 float,
--  Field2 float,
--  Field3 float,
--  Field4 float,
--  Field5 float,
--  Field6 float,
--  Field7 float,
--  Field8 float,
--  Field9 float,
--  Field10 float,
--  Field11 float,
--  Field12 float,
--  Field13 float,
--  Field14 float,
--  Field15 float,
--  Field16 float,
--  Field17 float,
--  Field18 float,
--  Field19 float,
--  Field20 float,
--  Field21 float,
--  Field22 float,
--  Field23 float,
--  Field24 float,
--  Field25 float,
--  Field26 float,
--  Field27 float,
--  Field28 float,
--  Field29 float,
--  Field30 float
--)


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


 exec spp_credit_Regression_Variable1
 exec spp_credit_Regression_Variable
select @RunDate = RunDate ,@runyear=year(RunDate) from ifrs_setup_data


select @LoanApplication=
d.ApplicationRefNumber from credit_individualapplicationscorecard a left outer join credit_loancustomer b on a.CustomerId = b.CustomerId
left outer join credit_product c  on a.ProductId = c.ProductId left outer join credit_loanapplication d on a.LoanApplicationId = d.LoanApplicationId
where b.CustomerTypeId = 2 and a.LoanApplicationId = @LoanApplicationId and a.CustomerId =@CustomerId

select @TempProductCode = a.ProductCode from credit_product a left outer join credit_individualapplicationscorecard b on a.ProductId = b.ProductId where b.LoanApplicationId = @LoanApplicationId
and b.CustomerId = @CustomerId
truncate table credit_loantable
insert into credit_loantable(LoanAmount,CustomerName,LoanReferenceNumber,ProductCode,ProductName, EffectiveDate,MaturityDate,CustomerTypeId, Field1 ,Field2 , Field3 , 
Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,
Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)


select d.ApprovedAmount as LoanAmount,b.FirstName + '  ' + b.LastName + '  ' + b.MiddleName as CustomerName,
d.ApplicationRefNumber as LoanReferenceNumber, c.ProductCode,c.ProductName, d.EffectiveDate,d.MaturityDate,1 as CustomerTypeId,
 Field1, Field2, Field3, Field4,Field5, Field6, Field7, Field8, Field9, Field10, Field11, Field12, Field13, Field14, Field15, 
 Field16, Field17, Field18, Field19, Field20, Field21, Field22,Field23, Field24, Field25, Field26, Field27, Field28, Field29,
 Field30 from credit_individualapplicationscorecard a left outer join credit_loancustomer b on a.CustomerId = b.CustomerId
left outer join credit_product c  on a.ProductId = c.ProductId left outer join credit_loanapplication d on a.LoanApplicationId = d.LoanApplicationId
where b.CustomerTypeId = 1 and a.LoanApplicationId = @LoanApplicationId and a.CustomerId =@CustomerId
union all
select LoanAmount, CustomerName, LoanReferenceNumber, ProductCode, ProductName, EffectiveDate, MaturityDate, CustomerTypeId, Field1, Field2, Field3, Field4,
 Field5, Field6, Field7, Field8, Field9, Field10, Field11, Field12, Field13, Field14, Field15, Field16, Field17, Field18, Field19, Field20, Field21, Field22,
 Field23, Field24, Field25, Field26, Field27, Field28, Field29, Field30 from credit_individualapplicationscorecard_history
 where  customerTypeId=1 and ProductCode = @TempProductCode


 select * from credit_loantable

insert into @tab5(ProductCode5)
select distinct ProductCode from credit_loantable where  customerTypeId=2
--select @ProductId = productId from credit_product where ProductCode =@ProductCode

SELECT
  @rtmax5 = COUNT(*)
FROM @tab5
set @rnct5 = 1
WHILE @rnct5 <= @rtmax5

begin
select @productcode = ProductCode5 from @tab5 where id5 =@rnct5

select @ProductId = productId from credit_product where ProductCode =@ProductCode


select @productAttributeCount = count(*) from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2

--exec spp_credit_Regression_Variable;
--EXEC spp_Dummy_table @productAttributeCount;

--exec spp_credit_Regression_Variable1;
--EXEC spp_Dummy1_table @productAttributeCount;


truncate table #tab1 
insert into #tab1 (CustomerName,LoanReferenceNumber,ProductCode)
select CustomerName,LoanReferenceNumber,ProductCode from credit_loantable where ProductCode =@productcode

select * from #tab1

SELECT
  @rtmax = COUNT(*)
FROM #tab1
set @rnct = 1
WHILE @rnct <= @rtmax
begin

select @CustomerName = CustomerName, @LoanReferenceNumber = LoanReferenceNumber from #tab1 where id =@rnct
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
FROM credit_loantable where LoanReferenceNumber =@LoanReferenceNumber

select * from #countTab
select @max2 = maxcount from #countTab 
set @max = 30-@max2
--select * from @countTab
select @productAttributeCount = 1 + count(*) from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2

set @productAttributeDiff = @productAttributeCount - @max
set @count3 = @max + @productAttributeDiff

select @max2,@max,@productAttributeCount,@productAttributeDiff,@count3


select @count3

if(@productAttributeDiff< 0)
begin
set @count3 =@max 
end 
else
begin
set @count3 =@count3
end


exec spp_credit_Regression_Variable1;
EXEC spp_Dummy1_table @count3;



--select @count3
declare @sql varchar(max)
set @sql = 'select '
select @sql=@sql+COLUMN_NAME+','
from information_schema.columns
where table_name = 'credit_loantable' and ordinal_position > @default and ordinal_position <= @count3 + @default
set @sql=LEFT(@sql,LEN(@sql)-1)+' from credit_loantable where LoanReferenceNumber = '  +''''+ 
				cast(  @LoanReferenceNumber  as varchar(250))+''' '
select @LoanReferenceNumber
select @sql


if(@productAttributeCount <> @max)

begin

if (@productAttributeDiff=1)
begin
if(@count3 = 2)
begin
 insert into credit_Regression_Variable1(Field1,Field2)
exec(@sql)
update credit_loantable set field2 = field1 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 3)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3)
exec(@sql)
update credit_loantable set field3 = field2 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 4)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4)
exec(@sql)
update credit_loantable set field4 = field3 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 5)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5)
exec(@sql)
update credit_loantable set field5 = field4 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 6)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6)
exec(@sql)
update credit_loantable set field6 = field5 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 7)
begin
insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7)
exec(@sql)
update credit_loantable set field7 = field6 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 8)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8)
exec(@sql)
update credit_loantable set field8 = field7 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 9)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9)
exec(@sql)
update credit_loantable set field9 = field8 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 10)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9,Field10)
exec(@sql)
update credit_loantable set field10 = field9 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 11)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 )
exec(@sql)
update credit_loantable set field11 = field10 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 12)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12)
exec(@sql)
update credit_loantable set field12 = field11 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 13)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 )
exec(@sql)
update credit_loantable set field13 = field12 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 14)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14)
exec(@sql)
update credit_loantable set field14 = field13 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 15)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15)
exec(@sql)
update credit_loantable set field15 = field14 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 16)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16)
exec(@sql)
update credit_loantable set field16 = field15 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 17)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17)
exec(@sql)
update credit_loantable set field17 = field16 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 18)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18)
exec(@sql)
update credit_loantable set field18 = field17 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 19)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19)
exec(@sql)
update credit_loantable set field9 = field18 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 20)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20)
exec(@sql)
update credit_loantable set field20 = field19 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 21)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21)
exec(@sql)
update credit_loantable set field21 = field20 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 22)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22)
exec(@sql)
update credit_loantable set field22 = field21 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 23)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23)
exec(@sql)
update credit_loantable set field23 = field22 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 24)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24)
exec(@sql)
update credit_loantable set field24 = field23 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 25)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25)
exec(@sql)
update credit_loantable set field25 = field24 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 26)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26)
exec(@sql)
update credit_loantable set field26 = field25 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 27)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27)
exec(@sql)
update credit_loantable set field27 = field26 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 28)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28)
exec(@sql)
update credit_loantable set field28 = field27 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 29)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29)
exec(@sql)

update credit_loantable set field29 = field28 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 30)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
exec(@sql)
update credit_loantable set field30 = field29 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field29 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field29') where LoanReferenceNumber =@LoanReferenceNumber
end


select * from credit_Regression_Variable1 

end

if (@productAttributeDiff=2)
begin
--if(@count3 = 2)
--begin
-- insert into credit_Regression_Variable1(Field1,Field2)
--exec(@sql)
--update credit_loantable set field2 = field1 where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanReferenceNumber =@LoanReferenceNumber
--end
if(@count3 = 3)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3)
exec(@sql)
update credit_loantable set field3 = field1 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 4)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4)
exec(@sql)
update credit_loantable set field4 = field2 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 5)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5)
exec(@sql)
update credit_loantable set field5 = field3 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 6)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6)
exec(@sql)
update credit_loantable set field6 = field4 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 7)
begin
insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7)
exec(@sql)
update credit_loantable set field7 = field5 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 8)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8)
exec(@sql)
update credit_loantable set field8 = field6 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 9)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9)
exec(@sql)
update credit_loantable set field9 = field7 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 10)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9,Field10)
exec(@sql)
update credit_loantable set field10 = field8 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 11)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 )
exec(@sql)
update credit_loantable set field11 = field9 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 12)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12)
exec(@sql)
update credit_loantable set field12 = field10 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 13)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 )
exec(@sql)
update credit_loantable set field13 = field11 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 14)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14)
exec(@sql)
update credit_loantable set field14 = field12 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 15)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15)
exec(@sql)
update credit_loantable set field15 = field13 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 16)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16)
exec(@sql)
update credit_loantable set field16 = field14 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 17)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17)
exec(@sql)
update credit_loantable set field17 = field15 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 18)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18)
exec(@sql)
update credit_loantable set field18 = field16 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 19)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19)
exec(@sql)
update credit_loantable set field9 = field17 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 20)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20)
exec(@sql)
update credit_loantable set field20 = field18 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 21)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21)
exec(@sql)
update credit_loantable set field21 = field19 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 22)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22)
exec(@sql)
update credit_loantable set field22 = field20 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 23)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23)
exec(@sql)
update credit_loantable set field23 = field21 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 24)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24)
exec(@sql)
update credit_loantable set field24 = field22 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 25)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25)
exec(@sql)
update credit_loantable set field25 = field23 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 26)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26)
exec(@sql)
update credit_loantable set field26 = field24 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 27)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27)
exec(@sql)
update credit_loantable set field27 = field25 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 28)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28)
exec(@sql)
update credit_loantable set field28 = field26 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 29)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29)
exec(@sql)

update credit_loantable set field29 = field27 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 30)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
exec(@sql)
update credit_loantable set field30 = field28 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field29 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field29') where LoanReferenceNumber =@LoanReferenceNumber
end


select * from credit_Regression_Variable1 

end

if (@productAttributeDiff=3)
begin
--if(@count3 = 2)
--begin
-- insert into credit_Regression_Variable1(Field1,Field2)
--exec(@sql)
--update credit_loantable set field2 = field1 where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanReferenceNumber =@LoanReferenceNumber
--end
--if(@count3 = 3)
--begin
-- insert into credit_Regression_Variable1(Field1,Field2, Field3)
--exec(@sql)
--update credit_loantable set field3 = field1 where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanReferenceNumber =@LoanReferenceNumber
--end
if(@count3 = 4)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4)
exec(@sql)
update credit_loantable set field4 = field1 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 5)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5)
exec(@sql)
update credit_loantable set field5 = field2 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 6)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6)
exec(@sql)
update credit_loantable set field6 = field3 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 7)
begin
insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7)
exec(@sql)
update credit_loantable set field7 = field4 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 8)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8)
exec(@sql)
update credit_loantable set field8 = field5 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 9)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9)
exec(@sql)
update credit_loantable set field9 = field6 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 10)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9,Field10)
exec(@sql)
update credit_loantable set field10 = field7 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 11)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 )
exec(@sql)
update credit_loantable set field11 = field8 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 12)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12)
exec(@sql)
update credit_loantable set field12 = field9 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 13)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 )
exec(@sql)
update credit_loantable set field13 = field10 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 14)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14)
exec(@sql)
update credit_loantable set field14 = field11 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 15)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15)
exec(@sql)
update credit_loantable set field15 = field12 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 16)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16)
exec(@sql)
update credit_loantable set field16 = field13 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 17)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17)
exec(@sql)
update credit_loantable set field17 = field14 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 18)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18)
exec(@sql)
update credit_loantable set field18 = field15 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 19)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19)
exec(@sql)
update credit_loantable set field9 = field16 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 20)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20)
exec(@sql)
update credit_loantable set field20 = field17 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 21)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21)
exec(@sql)
update credit_loantable set field21 = field18 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 22)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22)
exec(@sql)
update credit_loantable set field22 = field19 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 23)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23)
exec(@sql)
update credit_loantable set field23 = field20 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 24)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24)
exec(@sql)
update credit_loantable set field24 = field21 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 25)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25)
exec(@sql)
update credit_loantable set field25 = field22 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 26)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26)
exec(@sql)
update credit_loantable set field26 = field23 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 27)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27)
exec(@sql)
update credit_loantable set field27 = field24 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 28)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28)
exec(@sql)
update credit_loantable set field28 = field25 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 29)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29)
exec(@sql)

update credit_loantable set field29 = field26 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 30)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
exec(@sql)
update credit_loantable set field30 = field27 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field29 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field29') where LoanReferenceNumber =@LoanReferenceNumber
end


select * from credit_Regression_Variable1 

end

if (@productAttributeDiff=-1)
begin
--if(@count3 = 2)
--begin
-- insert into credit_Regression_Variable1(Field1,Field2)
--exec(@sql)
--update credit_loantable set field1 = field2 where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanReferenceNumber =@LoanReferenceNumber
--end
if(@count3 = 3)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3)
exec(@sql)
update credit_loantable set field2 = field3 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field3 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 4)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4)
exec(@sql)
update credit_loantable set field3 = field4 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field4 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 5)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5)
exec(@sql)
update credit_loantable set field4 = field5 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field5 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 6)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6)
exec(@sql)
update credit_loantable set field5 = field6 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field6 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 7)
begin
insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7)
exec(@sql)
update credit_loantable set field6 = field7 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field7 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 8)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8)
exec(@sql)
update credit_loantable set field7 = field8 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field8 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 9)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9)
exec(@sql)
update credit_loantable set field8 = field9 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field9 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 10)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9,Field10)
exec(@sql)
update credit_loantable set field9 = field10 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field10 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 11)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 )
exec(@sql)
update credit_loantable set field10 = field11 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field11 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 12)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12)
exec(@sql)
update credit_loantable set field11 = field12 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field12 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 13)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 )
exec(@sql)
update credit_loantable set field12 = field13 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field13 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 14)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14)
exec(@sql)
update credit_loantable set field13 = field14 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field14 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 15)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15)
exec(@sql)
update credit_loantable set field14 = field15 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field15 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 16)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16)
exec(@sql)
update credit_loantable set field15 = field16 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field16 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 17)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17)
exec(@sql)
update credit_loantable set field16 = field17 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field17 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 18)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18)
exec(@sql)
update credit_loantable set field17 = field18 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field18 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 19)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19)
exec(@sql)
update credit_loantable set field18 = field19 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field19 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 20)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20)
exec(@sql)
update credit_loantable set field19 = field20 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field20 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 21)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21)
exec(@sql)
update credit_loantable set field20 = field21 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field21 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 22)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22)
exec(@sql)
update credit_loantable set field21 = field22 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field22 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 23)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23)
exec(@sql)
update credit_loantable set field22 = field23 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field23 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 24)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24)
exec(@sql)
update credit_loantable set field23 = field24 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field24 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 25)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25)
exec(@sql)
update credit_loantable set field24 = field25 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field25 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 26)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26)
exec(@sql)
update credit_loantable set field25 = field26 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field26 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 27)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27)
exec(@sql)
update credit_loantable set field26 = field27 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field27 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 28)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28)
exec(@sql)
update credit_loantable set field27 = field28 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field28 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 29)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29)
exec(@sql)

update credit_loantable set field28 = field29 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field29 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 30)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
exec(@sql)
update credit_loantable set field29 = field30 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field30 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field29 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field29') where LoanReferenceNumber =@LoanReferenceNumber
end


select * from credit_Regression_Variable1 

end

if (@productAttributeDiff=-2)
begin
--if(@count3 = 2)
--begin
-- insert into credit_Regression_Variable1(Field1,Field2)
--exec(@sql)
--update credit_loantable set field2 = field1 where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanReferenceNumber =@LoanReferenceNumber
--end
if(@count3 = 3)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3)
exec(@sql)
update credit_loantable set field1 = field3 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field2 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field3 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 4)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4)
exec(@sql)
update credit_loantable set field2 = field4 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field3 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field4 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 5)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5)
exec(@sql)
update credit_loantable set field3 = field5 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field4 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field5 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 6)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6)
exec(@sql)
update credit_loantable set field4 = field6 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field5 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field6 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 7)
begin
insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7)
exec(@sql)
update credit_loantable set field5 = field7 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field6 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field7 = null where LoanReferenceNumber =@LoanReferenceNumber

--update credit_loantable set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 8)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8)
exec(@sql)
update credit_loantable set field6 = field8 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field7 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field8 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 9)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9)
exec(@sql)
update credit_loantable set field7 = field9 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field8 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field9 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 10)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9,Field10)
exec(@sql)
update credit_loantable set field8 = field10 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field9 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field10 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 11)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 )
exec(@sql)
update credit_loantable set field9 = field11 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field10 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field11 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 12)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12)
exec(@sql)
update credit_loantable set field10 = field12 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field11 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field12 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 13)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 )
exec(@sql)
update credit_loantable set field11 = field13 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field12 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field13 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 14)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14)
exec(@sql)
update credit_loantable set field12 = field14 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field13 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field14 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 15)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15)
exec(@sql)
update credit_loantable set field13 = field15 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field14 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field15 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 16)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16)
exec(@sql)
update credit_loantable set field14 = field16 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field15 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field16 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 17)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17)
exec(@sql)
update credit_loantable set field15 = field17 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field16 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field17 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 18)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18)
exec(@sql)
update credit_loantable set field16 = field18 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field17 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field18 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 19)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19)
exec(@sql)
update credit_loantable set field17 = field19 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field18 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field19 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 20)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20)
exec(@sql)
update credit_loantable set field18 = field20 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field19 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field20 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 21)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21)
exec(@sql)
update credit_loantable set field19 = field21 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field20 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field21 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 22)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22)
exec(@sql)
update credit_loantable set field20 = field22 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field21 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field22 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 23)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23)
exec(@sql)
update credit_loantable set field21 = field23 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field22 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field23 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 24)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24)
exec(@sql)
update credit_loantable set field22 = field24 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field23 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field24 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 25)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25)
exec(@sql)
update credit_loantable set field23 = field25 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field24 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field25 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 26)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26)
exec(@sql)
update credit_loantable set field24 = field26 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field25 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field26 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 27)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27)
exec(@sql)
update credit_loantable set field25 = field27 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field26 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field27 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 28)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28)
exec(@sql)
update credit_loantable set field26 = field28 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field27 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field28 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 29)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29)
exec(@sql)

update credit_loantable set field27 = field29 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field28 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field29 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 30)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
exec(@sql)
update credit_loantable set field28 = field30 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field29 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field30 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field29 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field29') where LoanReferenceNumber =@LoanReferenceNumber
end


select * from credit_Regression_Variable1 

end

if (@productAttributeDiff=-3)
begin
--if(@count3 = 2)
--begin
-- insert into credit_Regression_Variable1(Field1,Field2)
--exec(@sql)
--update credit_loantable set field2 = field1 where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanReferenceNumber =@LoanReferenceNumber
--end
--if(@count3 = 3)
--begin
-- insert into credit_Regression_Variable1(Field1,Field2, Field3)
--exec(@sql)
--update credit_loantable set field3 = field1 where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanReferenceNumber =@LoanReferenceNumber
--end
if(@count3 = 4)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4)
exec(@sql)
update credit_loantable set field1 = field4 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field2 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field3 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field4 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field1 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field1') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 5)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5)
exec(@sql)
update credit_loantable set field2 = field5 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field3 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field4 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field5 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field2 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field2') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 6)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6)
exec(@sql)
update credit_loantable set field3 = field6 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field4 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field5 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field6 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field3 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field3') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 7)
begin
insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7)
exec(@sql)
update credit_loantable set field4 = field7 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field5 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field6 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field7 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field4 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field4') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 8)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8)
exec(@sql)
update credit_loantable set field5 = field8 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field6 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field7 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field8 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field5 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field5') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 9)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9)
exec(@sql)
update credit_loantable set field6 = field9 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field7 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field8 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field9 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field6 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field6') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 10)
begin
 insert into credit_Regression_Variable1(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9,Field10)
exec(@sql)
update credit_loantable set field7 = field10 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field8 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field9 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field10 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field7 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field7') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 11)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 )
exec(@sql)
update credit_loantable set field8 = field11 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field9 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field10 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field11 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field8 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field8') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 12)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12)
exec(@sql)
update credit_loantable set field9 = field12 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field10 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field11 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field12 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field9 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field9') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 13)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 )
exec(@sql)
update credit_loantable set field10 = field13 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field11 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field12 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field13 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field10 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field10') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 14)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14)
exec(@sql)
update credit_loantable set field11 = field14 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field12 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field13 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field14 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field11 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field11') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 15)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15)
exec(@sql)
update credit_loantable set field12 = field15 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field13 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field14 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field15 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field12 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field12') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 16)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16)
exec(@sql)
update credit_loantable set field13 = field16 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field14 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field15 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field16 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field13 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field13') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 17)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17)
exec(@sql)
update credit_loantable set field14 = field17 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field15 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field16 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field17 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field14 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field14') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 18)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18)
exec(@sql)
update credit_loantable set field15 = field18 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field16 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field17 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field18 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field15 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field15') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 19)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19)
exec(@sql)
update credit_loantable set field16 = field19 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field17 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field18 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field19 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field16 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field16') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 20)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20)
exec(@sql)
update credit_loantable set field17 = field20 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field18 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field19 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field20 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field17 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field17') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 21)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21)
exec(@sql)
update credit_loantable set field18 = field21 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field19 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field20 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field21 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field18 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field18') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 22)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22)
exec(@sql)
update credit_loantable set field19 = field22 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field20 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field21 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field22 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field19 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field19') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 23)

begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23)
exec(@sql)
update credit_loantable set field20 = field23 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field21 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field22 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field23 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field20 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field20') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 24)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24)
exec(@sql)
update credit_loantable set field21 = field24 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field22 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field23 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field24 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field21 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field21') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 25)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25)
exec(@sql)
update credit_loantable set field22 = field25 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field23 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field24 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field25 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field22 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field22') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 26)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26)
exec(@sql)
update credit_loantable set field23 = field26 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field24 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field25 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field26 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field23 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field23') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 27)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27)
exec(@sql)
update credit_loantable set field24 = field27 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field25 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field26 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field27 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field24 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field24') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 28)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28)
exec(@sql)
update credit_loantable set field25 = field28 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field26 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field27 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field28 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field25 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field25') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 29)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29)
exec(@sql)

update credit_loantable set field26 = field29 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field27 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field28 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field29 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field26 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field26') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanReferenceNumber =@LoanReferenceNumber
end
if(@count3 = 30)
begin
 insert into credit_Regression_Variable1(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
exec(@sql)
update credit_loantable set field27 = field30 where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field28 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field29 = null where LoanReferenceNumber =@LoanReferenceNumber
update credit_loantable set field30 = null where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field27 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field27') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field28 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field28') where LoanReferenceNumber =@LoanReferenceNumber
--update credit_loantable set field29 = (select WeightedScore from credit_weightedriskscore where ProductId =@ProductId and CustomerTypeId =2 and FeildName = 'Field29') where LoanReferenceNumber =@LoanReferenceNumber
end


select * from credit_Regression_Variable1 

end
end

exec spp_credit_Regression_Variable;
EXEC spp_Dummy_table @productAttributeCount;

declare @select varchar(max)
set @select = 'select '
select @select=@select+COLUMN_NAME+','
from information_schema.columns
where table_name = 'credit_loantable' and ordinal_position > @default and ordinal_position <= @productAttributeCount + @default
set @select=LEFT(@select,LEN(@select)-1)+' from credit_loantable where ProductCode = '  +''''+ 
				cast(  @ProductCode  as varchar(250))+''' '

select @select
if(@productAttributeCount = 2)
begin
 insert into credit_Regression_Variable(Field1,Field2)
exec(@select)
end
if(@productAttributeCount = 3)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3)
exec(@select)
end
if(@productAttributeCount = 4)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4)
exec(@select)
end
if(@productAttributeCount = 5)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5)
exec(@select)
end
if(@productAttributeCount = 6)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6)
exec(@select)
end
if(@productAttributeCount = 7)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7)
exec(@select)
end
if(@productAttributeCount = 8)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8)
exec(@select)
end
if(@productAttributeCount = 9)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9)
exec(@select)
end
if(@productAttributeCount = 10)
begin
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9,Field10)
exec(@select)
end
if(@productAttributeCount = 11)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 )
exec(@select)
end
if(@productAttributeCount = 12)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12)
exec(@select)
end
if(@productAttributeCount = 13)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 )
exec(@select)
end
if(@productAttributeCount = 14)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14)
exec(@select)
end
if(@productAttributeCount = 15)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15)
exec(@select)
end
if(@productAttributeCount = 16)

begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16)
exec(@select)
end
if(@productAttributeCount = 17)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17)
exec(@select)
end
if(@productAttributeCount = 18)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18)
exec(@select)
end
if(@productAttributeCount = 19)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19)
exec(@select)
end
if(@productAttributeCount = 20)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20)
exec(@select)
end
if(@productAttributeCount = 21)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21)
exec(@select)
end
if(@productAttributeCount = 22)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22)
exec(@select)
end
if(@productAttributeCount = 23)

begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23)
exec(@select)
end
if(@productAttributeCount = 24)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24)
exec(@select)
end
if(@productAttributeCount = 25)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25)
exec(@select)
end
if(@productAttributeCount = 26)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26)
exec(@select)
end
if(@productAttributeCount = 27)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27)
exec(@select)
end
if(@productAttributeCount = 28)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28)
exec(@select)
end
if(@productAttributeCount = 29)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29)
exec(@select)
end
if(@productAttributeCount = 30)
begin
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
exec(@select)
end

 SET @rnct = @rnct + 1;
  select * from credit_Regression_Variable1 
 select * from credit_Regression_Variable
 end
 --select * from credit_Regression_Variable1 
 --select * from credit_Regression_Variable


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

   begin
 insert into @tab4 (CustomerName4,LoanReferenceNumber4,ProductCode4)
select CustomerName,LoanReferenceNumber,ProductCode from credit_loantable where ProductCode =@ProductCode
end
   SELECT
  @rtmax4 = COUNT(*)
FROM @tab4
set @rnct4 = 1
WHILE @rnct4 <= @rtmax4
	begin
					select @CustomerName = CustomerName4, @LoanReferenceNumber = LoanReferenceNumber4 from @tab4 where id4 =@rnct4

			begin
			 --  delete from credit_customerloanpd_history where LoanReferenceNumber =@LoanReferenceNumber
			 --  insert into credit_customerloanpd_history(CreditRiskAttribute, AttributeField, Score, Coefficients, 
			 --  AverageCoefficients, Year,Date,CustomerName,LoanReferenceNumber,ProductCode,ProductName)
			 --  select isnull(c.CreditRiskAttribute, 'Intercepts'),c.AttributeField,b.Score, 
			 --  a.stat_val as Coeff,a.stat_val*isnull(b.Score ,1)as pd ,
			 --  (case when YEAR(b.MaturityDate) < @runyear then  
			 --  YEAR(b.MaturityDate)
			 --  else
			 --  @runyear end) as Year,
     
			 --  (b.maturitydate) as date,b.CustomerName,b.LoanReferenceNumber,b.ProductCode, b.ProductName
				--from @tab3 a left outer join credit_individualapplicationscorecarddetails_history b on a.idx = cast(SUBSTRING(b.AttributeField,6,2) as int)
			 --  left outer join credit_creditriskattribute c on b.AttributeField = c.AttributeField 
			 --  where b.LoanReferenceNumber =@LoanReferenceNumber
				--order by  c.AttributeField

							truncate table #tab2
			insert into #tab2(Field1,Field2,Field3,Field4,Field5,Field6,Field7,Field8,Field9,Field10,Field11,Field12,Field13,Field14,Field15,Field16,Field17,Field18,Field19,Field20
			,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
			select Field1, Field2, Field3, Field4, Field5, Field6, Field7, Field8, Field9, Field10, Field11, Field12, Field13, Field14, Field15, Field16, Field17, Field18, Field19,
			 Field20, Field21, Field22, Field23, Field24, Field25, Field26, Field27, Field28, Field29, Field30 from credit_loantable  where LoanReferenceNumber =@LoanApplication

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

			--   delete from credit_customerloanpd_history where LoanReferenceNumber =@LoanReferenceNumber
			--   insert into credit_customerloanpd_history(CreditRiskAttribute, AttributeField, Score, Coefficients, 
			--   AverageCoefficients, Year,Date,CustomerName,LoanReferenceNumber,ProductCode,ProductName)

			--    select isnull(b.FieldName, 'Intercepts'),b.FieldName,b.Score,a.stat_val as Coeff,cast(a.stat_val as decimal(38,20)) *isnull(b.Score ,1)as pd ,
			--    --@runyear  as Year,getdate() as date , 
			--	(case when YEAR(c.MaturityDate) < @runyear then  
			--	YEAR(c.MaturityDate)
			--	else
			--   @runyear end) as Year,
     
			--   (c.maturitydate) as date,
				
			--	@CustomerName, @LoanReferenceNumber, @ProductCode,@ProductCode
			--	 from @tab3 a left outer join #Tab3 b on a.idx = b.id left outer join credit_individualapplicationscorecarddetails_history c on b.FieldName = c.AttributeField
			--	order by  b.FieldName

			--update credit_customerloanpd_history set PD = Coefficients * AverageCoefficients where LoanReferenceNumber =@LoanReferenceNumber ;

			--   select @AverageCoefficients =  sum(AverageCoefficients) from  credit_customerloanpd_history where LoanReferenceNumber =@LoanReferenceNumber

			--   set @sumpd = @AverageCoefficients + @Intercepts

			--   set @pd = (exp(@sumpd)/ (1 + exp(@sumpd)))
    
			--  update credit_customerloanpd_history set PD = @pd where LoanReferenceNumber =@LoanReferenceNumber ;
			--  SET @rnct4 = @rnct4 + 1;



			  SET @rnct4 = @rnct4 + 1;
			end	 
	end
	 SET @rnct5 = @rnct5 + 1;

	 select * from #Tab3
	 select * from @tab3

	 	delete from credit_customerloanpd where CustomerId =@CustomerId and LoanApplicationId =@LoanApplicationId
   insert into credit_customerloanpd(CreditRiskAttribute, CustomerId, LoanApplicationId, AttributeField, Score, Coefficients, AverageCoefficients, Date)
   select isnull(b.FieldName, 'Intercepts'),@CustomerId, @LoanApplicationId,b.FieldName,b.Score, 
  a.stat_val as Coeff,cast(a.stat_val as decimal(38,20)) *isnull(b.Score ,1)as pd , getdate() as date from @tab3 a left outer join #Tab3 b on a.idx = b.id
		order by  b.FieldName

   select @AverageCoefficients =  sum(AverageCoefficients) from  credit_customerloanpd where CustomerId =@CustomerId and LoanApplicationId =@LoanApplicationId

   set @sumpd = @AverageCoefficients + @Intercepts

   --select @Intercepts,@AverageCoefficients,@sumpd ,EXP(@sumpd),(1 + EXP(@sumpd))
   set @pd = (EXP(@sumpd)/ (1 + EXP(@sumpd)))

    --select @Intercepts,@AverageCoefficients,@sumpd ,EXP(@sumpd),(1 + EXP(@sumpd)),@pd
   update credit_loanapplication set PD = @pd where LoanApplicationId = @LoanApplicationId and CustomerId =@CustomerId
 end
  exec spp_credit_Regression_Variable1
 exec spp_credit_Regression_Variable
end

