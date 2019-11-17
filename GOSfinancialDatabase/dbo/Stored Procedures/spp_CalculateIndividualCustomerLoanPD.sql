


CREATE proc [dbo].[spp_CalculateIndividualCustomerLoanPD]--1053,2083

(
@CustomerId int,
@LoanApplicationId int
)
as

begin

declare @count as int
declare @default as int = 4
declare @diff as int 
Declare @AverageCoefficients as float
Declare @Intercepts as float
Declare @sumpd as float
Declare @pd as float,  @sqlStm varchar(max)
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

exec spp_credit_Regression_Variable
 EXEC spp_Dummy_table 30


select @count   = count(*) from credit_individualapplicationscorecarddetails where LoanApplicationId =@LoanApplicationId
set @diff = @count -@default
declare @select varchar(max)
set @select = 'select '

select @select=@select+COLUMN_NAME+','
from information_schema.columns
where table_name = 'credit_individualapplicationscorecard' and ordinal_position > @default and ordinal_position <= @count + @default
set @select=LEFT(@select,LEN(@select)-1)+' from credit_individualapplicationscorecard where LoanApplicationId = '  +''''+ 
				cast(  @LoanApplicationId  as varchar(6))+''' '

--SET @sqlStm = 'Drop table  credit_Regression_Variable'
--exec @sqlStm

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
--exec (@sqlStm)
exec spp_credit_Regression_Variable

 EXEC spp_Dummy_table 10
 insert into credit_Regression_Variable(Field1,Field2, Field3, Field4,Field5,Field6 ,Field7,Field8,Field9,Field10)
exec(@select)
end
if(@count = 11)
begin
--exec (@sqlStm)
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


insert into @tab2(Stat_name,idx,stat_val)

   SELECT
   *
FROM
   wct.LOGIT(
   'SELECT
    *
    FROM
       credit_Regression_Variable'
   ,@count
   )

exec spp_credit_Regression_Variable
   insert into @tab3(Stat_name,idx,stat_val)
   select Stat_name,idx,stat_val from @tab2 where Stat_name = 'b'

   select @Intercepts = stat_val from @tab2 where Stat_name = 'b' and idx = 0 
   select * from @tab2

   delete from credit_customerloanpd where CustomerId =@CustomerId and LoanApplicationId =@LoanApplicationId
   insert into credit_customerloanpd(CreditRiskAttribute, CustomerId, LoanApplicationId, AttributeField, Score, Coefficients, AverageCoefficients, Date)
   select isnull(c.CreditRiskAttribute, 'Intercepts'),isnull(b.CustomerId,@CustomerId), isnull(b.LoanApplicationId,@LoanApplicationId),c.AttributeField,b.Score, 
   cast(a.stat_val as decimal(38,20)) as Coeff,cast(a.stat_val as decimal(38,20)) *isnull(b.Score ,1)as pd , getdate() as date from @tab3 a left outer join credit_individualapplicationscorecarddetails b on a.idx = cast(SUBSTRING(b.AttributeField,6,2) as int)
   left outer join credit_creditriskattribute c on b.AttributeField = c.AttributeField
   where  b.CustomerId =@CustomerId and b.LoanApplicationId =@LoanApplicationId
		order by  c.AttributeField

   select @AverageCoefficients =  sum(AverageCoefficients) from  credit_customerloanpd where CustomerId =@CustomerId and LoanApplicationId =@LoanApplicationId

   set @sumpd = @AverageCoefficients + @Intercepts

   --set @pd = (EXP(-0.000000000000000004463))

   --set @pd = (EXP(-0.000000000000000004463)/ (1 + EXP(-0.000000000000000004463)))

   set @pd = (EXP(@sumpd)/ (1 + EXP(@sumpd)))
   --set @pd = @sumpd
   --select @AverageCoefficients,@sumpd,@pd
   update credit_loanapplication set PD = @pd where LoanApplicationId = @LoanApplicationId and CustomerId =@CustomerId ;

   exec spp_credit_Regression_Variable

   end


