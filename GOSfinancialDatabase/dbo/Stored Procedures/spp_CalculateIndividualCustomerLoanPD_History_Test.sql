


CREATE proc [dbo].[spp_CalculateIndividualCustomerLoanPD_History_Test]--9,12

--(
--@CustomerId int,
--@LoanApplicationId int
--)
as

begin

declare @CustomerName varchar(250), @LoanReferenceNumber varchar(250), @rnct int, @rtmax int ,@ProductCode varchar(250) 
declare @count as int
declare @default as int = 8
declare @diff as int 
Declare @AverageCoefficients as float
Declare @Intercepts as float
Declare @sumpd as float
Declare @pd as float


DECLARE @tab1 TABLE (
  id int IDENTITY (1, 1) NOT NULL,
  CustomerName varchar(250),
  LoanReferenceNumber varchar(250),
  ProductCode varchar(250)
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

--insert into @tab1 (CustomerName,LoanReferenceNumber,ProductCode)
--select CustomerName,LoanReferenceNumber,ProductCode from credit_individualapplicationscorecard_history


insert into @tab1 (ProductCode)
select distinct ProductCode from credit_individualapplicationscorecard_history


SELECT
  @rtmax = COUNT(*)
FROM @tab1
set @rnct = 1
WHILE @rnct <= @rtmax
--select @rtmax
--select * from @tab1
begin

--select @CustomerName = CustomerName, @LoanReferenceNumber = LoanReferenceNumber from @tab1 where id =@rnct

select @ProductCode = ProductCode from @tab1 where id =@rnct

--select @count   = count(*) from credit_individualapplicationscorecarddetails_history where LoanReferenceNumber =@LoanReferenceNumber
select @count   = count(*) from credit_individualapplicationscorecarddetails_history where ProductCode =@ProductCode
set @diff = @count -@default
declare @select varchar(max)
set @select = 'select '

--select @select=@select+COLUMN_NAME+','
--from information_schema.columns
--where table_name = 'credit_individualapplicationscorecard_history' and ordinal_position > @default and ordinal_position <= @count + @default
--set @select=LEFT(@select,LEN(@select)-1)+' from credit_individualapplicationscorecard_history where LoanReferenceNumber = '  +''''+ 
--				cast(  @LoanReferenceNumber  as varchar(250))+''' '

select @select=@select+COLUMN_NAME+','
from information_schema.columns
where table_name = 'credit_individualapplicationscorecard_history' and ordinal_position > @default and ordinal_position <= @count + @default
set @select=LEFT(@select,LEN(@select)-1)+' from credit_individualapplicationscorecard_history where ProductCode = '  +''''+ 
				cast(  @ProductCode  as varchar(250))+''' '
exec spp_credit_Regression_Variable
if(@count = 2)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 2
 insert into credit_Regression_Variable(Field1,Field2)
exec(@select)
end
if(@count = 3)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 3
 insert into credit_Regression_Variable(Field1,Field2, Field3)
exec(@select)
end
if(@count = 4)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 4
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4)
exec(@select)
end
if(@count = 5)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 5
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5)
exec(@select)
end
if(@count = 6)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 6
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6)
exec(@select)
end
if(@count = 7)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 7
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7)
exec(@select)
end
if(@count = 8)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 8
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8)
exec(@select)
end
if(@count = 9)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 9
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9)
exec(@select)
end
if(@count = 10)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 10
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9,Field10)
exec(@select)
end
if(@count = 11)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 11
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 )
exec(@select)
end
if(@count = 12)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 12
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12)
exec(@select)
end
if(@count = 13)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 13
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 )
exec(@select)
end
if(@count = 14)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 14
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14)
exec(@select)
end
if(@count = 15)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 15
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15)
exec(@select)
end
if(@count = 16)

begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 16
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16)
exec(@select)
end
if(@count = 17)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 17
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17)
exec(@select)
end
if(@count = 18)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 18
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18)
exec(@select)
end
if(@count = 19)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 19
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19)
exec(@select)
end
if(@count = 20)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 20
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20)
exec(@select)
end
if(@count = 21)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 21
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21)
exec(@select)
end
if(@count = 22)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 22
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22)
exec(@select)
end
if(@count = 23)

begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 23
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23)
exec(@select)
end
if(@count = 24)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 24
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24)
exec(@select)
end
if(@count = 25)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 25
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25)
exec(@select)
end
if(@count = 26)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 26
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26)
exec(@select)
end
if(@count = 27)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 27
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27)
exec(@select)
end
if(@count = 28)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 28
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28)
exec(@select)
end
if(@count = 29)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 29
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29)
exec(@select)
end
if(@count = 30)
begin
exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 30
 insert into credit_Regression_Variable(Field1 ,Field2 , Field3 , Field4 ,Field5 ,Field6 ,Field7 ,Field8 ,Field9 ,Field10 ,Field11 ,Field12 ,Field13 ,Field14 ,Field15 ,Field16 ,Field17 ,Field18 ,Field19,Field20,Field21,Field22,Field23,Field24,Field25,Field26,Field27,Field28,Field29,Field30)
exec(@select)
end


select @select
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


exec spp_credit_Regression_Variable
   delete from @tab3
   insert into @tab3(Stat_name,idx,stat_val)
   select Stat_name,idx,stat_val from @tab2 where Stat_name = 'b' and idx<>0

   select @Intercepts = stat_val from @tab2 where Stat_name = 'b' and idx = 0 
   select * from @tab3

   --delete from credit_customerloanpd_history where LoanReferenceNumber =@LoanReferenceNumber
    delete from credit_customerloanpd_history where ProductCode =@ProductCode
   insert into credit_customerloanpd_history(CreditRiskAttribute, AttributeField, Score, Coefficients, 
   AverageCoefficients, Year,Date,CustomerName,LoanReferenceNumber,ProductCode,ProductName)
   select isnull(c.CreditRiskAttribute, 'Intercepts'),c.AttributeField,b.Score, 
   a.stat_val as Coeff,a.stat_val*isnull(b.Score ,1)as pd ,
   (case when YEAR(b.EffectiveDate) < year(GETDATE()) then  
   YEAR(b.EffectiveDate)
   else
   year(GETDATE()) end) as Year,
     
   (b.maturitydate) as date,b.CustomerName,b.LoanReferenceNumber,b.ProductCode, b.ProductName
    from @tab3 a left outer join credit_individualapplicationscorecarddetails_history b on a.idx = cast(SUBSTRING(b.AttributeField,6,2) as int)
   left outer join credit_creditriskattribute c on b.AttributeField = c.AttributeField 
   --where b.LoanReferenceNumber =@LoanReferenceNumber
   where b.ProductCode =@ProductCode
		order by  c.AttributeField
	end
   select @AverageCoefficients =  sum(AverageCoefficients) from  credit_customerloanpd_history where LoanReferenceNumber =@LoanReferenceNumber

   set @sumpd = @AverageCoefficients + @Intercepts

   set @pd = (exp(@sumpd)/ (1 + exp(@sumpd)))

    --set @pd = (@sumpd/ 1 + @sumpd)
    
   update credit_customerloanpd_history set PD = @pd where LoanReferenceNumber =@LoanReferenceNumber ;

   delete from credit_customerloanpd_history_final  where LoanReferenceNumber =@LoanReferenceNumber
   insert into credit_customerloanpd_history_final( LoanReferenceNumber, ProductCode, ProductName , PD, Date, Year,
    CustomerName,Variable1,Variable2,Variable3,Variable4,Variable5,Variable6,Variable7)
   select top 1  LoanReferenceNumber, ProductCode, ProductName, PD, Date, a.Year,
   CustomerName, b.GDP,b.Unemployement,b.Inflation,b.erosion,b.ForegnEx,b.Others,b.otherfactor from credit_customerloanpd_history a left outer join 
   ifrs_macroeconomic_variables_year b on a.Year = b.Year
   where LoanReferenceNumber =@LoanReferenceNumber
  SET @rnct = @rnct + 1;
   end

   end


