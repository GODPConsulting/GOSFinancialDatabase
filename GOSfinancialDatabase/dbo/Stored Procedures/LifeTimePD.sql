


CREATE proc [dbo].[LifeTimePD]

as

begin

declare @runyear as int ,
 @yearone int , 
 @yeartwo int ,
 @yearthree int , 
 @yearfour int,
 @yearfive int, 
 @yearsix int,
 @yearseven int, 
 @yeareight int,
 @historicalcount int,
 @RunDate date


 DECLARE @tab TABLE (
  id int IDENTITY (1, 1) NOT NULL,
  Year int,
  pd1 float,
  pd2 float,
  pd3 float,
  pd4 float,
  pd5 float,
  pd6 float,
  pd7 float,
  lifetimepd float,
  pdtype varchar(50),
  applicablepd float,
  LoanReferenceNumber varchar(50),
  productCode varchar(20)
)

 DECLARE @tab1 TABLE (
  id int IDENTITY (1, 1) NOT NULL,
   year int,LoanReferenceNumber varchar(50),
  productCode varchar(20),Intercept float,coeff1 float,coeff2 float,coeff3 float,coeff4 float,coeff5 float,coeff6 float,coeff7 float, 
gdp1 float,gdp2 float,gdp3 float,gdp4 float,gdp5 float,gdp6 float, gdp7 float,
   Unemployement1 float , Unemployement2 float , Unemployement3 float , Unemployement4 float , Unemployement5 float , Unemployement6 float ,Unemployement7 float ,
 Inflation1 float , Inflation2 float , Inflation3 float , Inflation4 float , Inflation5 float , Inflation6 float , Inflation7 float ,
   erosion1 float ,  erosion2 float ,  erosion3 float , erosion4 float ,  erosion5 float ,  erosion6 float ,  erosion7 float ,
 ForegnEx1 float,ForegnEx2 float,ForegnEx3 float,ForegnEx4 float,ForegnEx5 float,ForegnEx6 float,ForegnEx7 float,
 Others1 float,Others2 float,Others3 float,Others4 float,Others5 float,Others6 float, Others7 float,      
otherfactor1 float,otherfactor2 float,otherfactor3 float,otherfactor4 float,otherfactor5 float,otherfactor6 float, otherfactor7 float
 
)


declare @gdp7 float,@gdp1 float,@gdp2 float,@gdp3 float,@gdp4 float,@gdp5 float,@gdp6 float,
 @Unemployement7 float ,  @Unemployement1 float , @Unemployement2 float , @Unemployement3 float , @Unemployement4 float , @Unemployement5 float , @Unemployement6 float ,
 @Inflation7 float , @Inflation1 float , @Inflation2 float , @Inflation3 float , @Inflation4 float , @Inflation5 float , @Inflation6 float ,
 @erosion7 float ,  @erosion1 float ,  @erosion2 float ,  @erosion3 float , @erosion4 float ,  @erosion5 float ,  @erosion6 float ,  
 @ForegnEx7 float,@ForegnEx1 float,@ForegnEx2 float,@ForegnEx3 float,@ForegnEx4 float,@ForegnEx5 float,@ForegnEx6 float,
 @Others7 float,@Others1 float,@Others2 float,@Others3 float,@Others4 float,@Others5 float,@Others6 float,       
 @otherfactor7 float,@otherfactor1 float,@otherfactor2 float,@otherfactor3 float,@otherfactor4 float,@otherfactor5 float,@otherfactor6 float

 --select @runyear=year(RunDate)  from ifrs_setup_data
 --select @historicalcount=Historical_PD_Year_Count, @runyear=year(RunDate)  from ifrs_setup_data
 --select @runyear=2015

select @historicalcount=Historical_PD_Year_Count, @RunDate = RunDate ,@runyear=year(RunDate) from ifrs_setup_data
set @runyear =@runyear

 set @yearone = @runyear +1
 set @yeartwo = @runyear +2
 set @yearthree = @runyear +3
 set @yearfour = @runyear +4
 set @yearfive = @runyear +5
 set @yearsix = @runyear +6
 set @yearseven = @runyear +7
 set @yeareight = @runyear +8

-- select @yearone,@yeartwo,@yearthree,@yearfour,@yearfive,@yearsix,@yearseven,@yeareight
 select @gdp1 = isnull(GDP,0), @Unemployement1 = isnull(Unemployement,0),@Inflation1 = isnull(Inflation,0), @erosion1 = isnull(erosion,0),
  @ForegnEx1 = isnull(ForegnEx,0), @Others1 = isnull(Others,0), @otherfactor1 = isnull(otherfactor,0) from ifrs_macroeconomic_variables_year where year = @yearone

select @gdp2 = isnull(GDP,0), @Unemployement2 = isnull(Unemployement,0),@Inflation2 = isnull(Inflation,0), @erosion2 = isnull(erosion,0),
  @ForegnEx2 = isnull(ForegnEx,0), @Others2 = isnull(Others,0), @otherfactor2 = isnull(otherfactor,0) from ifrs_macroeconomic_variables_year where year = @yeartwo

select @gdp3 = isnull(GDP,0), @Unemployement3 = isnull(Unemployement,0),@Inflation3 = isnull(Inflation,0), @erosion3 = isnull(erosion,0),
  @ForegnEx3 = isnull(ForegnEx,0), @Others3 = isnull(Others,0), @otherfactor3 = isnull(otherfactor,0) from ifrs_macroeconomic_variables_year where year = @yearthree

select @gdp4 = isnull(GDP,0), @Unemployement4 = isnull(Unemployement,0),@Inflation4 = isnull(Inflation,0), @erosion4 = isnull(erosion,0),
  @ForegnEx4 = isnull(ForegnEx,0), @Others4 = isnull(Others,0), @otherfactor4 = isnull(otherfactor,0) from ifrs_macroeconomic_variables_year where year = @yearfour


select @gdp5 = isnull(GDP,0), @Unemployement5 = isnull(Unemployement,0),@Inflation5 = isnull(Inflation,0), @erosion5 = isnull(erosion,0),
  @ForegnEx5 = isnull(ForegnEx,0), @Others5 = isnull(Others,0), @otherfactor5 = isnull(otherfactor,0) from ifrs_macroeconomic_variables_year where year = @yearfive

select @gdp6 = isnull(GDP,0), @Unemployement6 = isnull(Unemployement,0),@Inflation6 = isnull(Inflation,0), @erosion6 = isnull(erosion,0),
  @ForegnEx6 = isnull(ForegnEx,0), @Others6 = isnull(Others,0), @otherfactor6 = isnull(otherfactor,0) from ifrs_macroeconomic_variables_year where year = @yearsix

select @gdp7 = isnull(GDP,0), @Unemployement7 = isnull(Unemployement,0),@Inflation7 = isnull(Inflation,0), @erosion7 = isnull(erosion,0),
  @ForegnEx7 = isnull(ForegnEx,0), @Others7 = isnull(Others,0), @otherfactor7 = isnull(otherfactor,0) from ifrs_macroeconomic_variables_year where year = @yearseven

insert into @tab1(year,Intercept, coeff1,coeff2,coeff3,coeff4,coeff5,coeff6,coeff7, LoanReferenceNumber,ProductCode, 
gdp1,Unemployement1,Inflation1,erosion1,ForegnEx1,Others1,otherfactor1,
gdp2,Unemployement2,Inflation2,erosion2,ForegnEx2,Others2,otherfactor2,
gdp3,Unemployement3,Inflation3,erosion3,ForegnEx3,Others3,otherfactor3,
gdp4,Unemployement4,Inflation4,erosion4,ForegnEx4,Others4,otherfactor4,
gdp5,Unemployement5,Inflation5,erosion5,ForegnEx5,Others5,otherfactor5,
gdp6,Unemployement6,Inflation6,erosion6,ForegnEx6,Others6,otherfactor6,
gdp7,Unemployement7,Inflation7,erosion7,ForegnEx7,Others7,otherfactor7)

select year,Intercept, coeff1,coeff2,coeff3,coeff4,coeff5,coeff6,coeff7, LoanReferenceNumber,ProductCode, @gdp1 as gdp1 ,@Unemployement1 as Unemployement1,
@Inflation1 as Inflation1,@erosion1 as erosion1,@ForegnEx1 as ForegnEx1,@Others1 as Others1,@otherfactor1 as otherfactor1,
@gdp2 as gdp2 ,@Unemployement2 as Unemployement2,
@Inflation2 as Inflation2,@erosion2 as erosion2,@ForegnEx2 as ForegnEx2,@Others2 as Others2,@otherfactor2 as otherfactor2,
@gdp3 as gdp3 ,@Unemployement3 as Unemployement3,
@Inflation3 as Inflation3,@erosion3 as erosion3,@ForegnEx3 as ForegnEx3,@Others3 as Others3,@otherfactor3 as otherfactor3,
@gdp4 as gdp4 ,@Unemployement4 as Unemployement4,
@Inflation4 as Inflation4,@erosion4 as erosion4,@ForegnEx4 as ForegnEx4,@Others4 as Others4,@otherfactor4 as otherfactor4,
@gdp5 as gdp5 ,@Unemployement5 as Unemployement5,
@Inflation5 as Inflation5,@erosion5 as erosion5,@ForegnEx5 as ForegnEx5,@Others5 as Others5,@otherfactor5 as otherfactor5,
@gdp6 as gdp6 ,@Unemployement6 as Unemployement6,
@Inflation6 as Inflation6,@erosion6 as erosion6,@ForegnEx6 as ForegnEx6,@Others6 as Others6,@otherfactor6 as otherfactor6,
@gdp7 as gdp7 ,@Unemployement7 as Unemployement7,
@Inflation7 as Inflation7,@erosion7 as erosion7,@ForegnEx7 as ForegnEx7,@Others7 as Others7,@otherfactor7 as otherfactor7

 from ifrs_Var_Coeff_Comp_PD

 insert into @tab(year, pd1,pd2,pd3,pd4,pd5,pd6,pd7,lifetimepd,pdtype,LoanReferenceNumber,productCode)
 select a.year, isnull(Intercept + isnull(coeff1 * gdp1,0) + isnull(coeff2 * Unemployement1,0 )+ isnull(coeff3 * Inflation1,0) + isnull(coeff4 * erosion1,0) 
+ isnull(coeff5 * ForegnEx1,0) + isnull(coeff6 * Others1,0) + isnull(coeff7 * otherfactor1,0),0) as pd1,
isnull(Intercept + isnull(coeff1 * gdp2,0) + isnull(coeff2 * Unemployement2,0 )+ isnull(coeff3 * Inflation2,0) + isnull(coeff4 * erosion2,0) 
+ isnull(coeff5 * ForegnEx2,0) + isnull(coeff6 * Others2,0) + isnull(coeff7 * otherfactor2,0),0) as pd2,
isnull(Intercept + isnull(coeff1 * gdp3,0) + isnull(coeff2 * Unemployement3 ,0)+ isnull(coeff3 * Inflation3,0) + isnull(coeff4 * erosion3,0) 
+ isnull(coeff5 * ForegnEx3,0) + isnull(coeff6 * Others3,0) + isnull(coeff7 * otherfactor3,0),0) as pd3,
isnull(Intercept + isnull(coeff1 * gdp4,0) + isnull(coeff2 * Unemployement4,0 )+ isnull(coeff3 * Inflation4,0) + isnull(coeff4 * erosion4,0) 
+ isnull(coeff5 * ForegnEx4,0) + isnull(coeff6 * Others4,0) + isnull(coeff7 * otherfactor4,0),0) as pd4,
isnull(Intercept + isnull(coeff1 * gdp5,0) + isnull(coeff2 * Unemployement5,0 )+ isnull(coeff3 * Inflation5,0) + isnull(coeff4 * erosion5,0) 
+ isnull(coeff5 * ForegnEx5,0) + isnull(coeff6 * Others5,0) + isnull(coeff7 * otherfactor5,0),0) as pd5,
isnull(Intercept + isnull(coeff1 * gdp6,0) + isnull(coeff2 * Unemployement6,0 )+ isnull(coeff3 * Inflation6,0) + isnull(coeff4 * erosion6,0) 
+ isnull(coeff5 * ForegnEx6,0) + isnull(coeff6 * Others6,0) + isnull(coeff7 * otherfactor6,0),0) as pd6,
isnull(Intercept + isnull(coeff1 * gdp7,0) + isnull(coeff2 * Unemployement7,0 )+ isnull(coeff3 * Inflation7,0) + isnull(coeff4 * erosion7,0) 
+ isnull(coeff5 * ForegnEx7,0) + isnull(coeff6 * Others7,0) + isnull(coeff7 * otherfactor7,0),0) as pd7,
case when a.year = @yearone then 
isnull(Intercept + isnull(coeff1 * gdp1,0) + isnull(coeff2 * Unemployement1,0 )+ isnull(coeff3 * Inflation1,0) + isnull(coeff4 * erosion1,0) 
+ isnull(coeff5 * ForegnEx1,0) + isnull(coeff6 * Others1,0) + isnull(coeff7 * otherfactor1,0),0)
when a.year = @yeartwo then 
isnull(Intercept + isnull(coeff1 * gdp2,0) + isnull(coeff2 * Unemployement2,0 )+ isnull(coeff3 * Inflation2,0) + isnull(coeff4 * erosion2,0) 
+ isnull(coeff5 * ForegnEx2,0) + isnull(coeff6 * Others2,0) + isnull(coeff7 * otherfactor2,0),0)
when a.year = @yearthree then 
isnull(Intercept + isnull(coeff1 * gdp3,0) + isnull(coeff2 * Unemployement3 ,0)+ isnull(coeff3 * Inflation3,0) + isnull(coeff4 * erosion3,0) 
+ isnull(coeff5 * ForegnEx3,0) + isnull(coeff6 * Others3,0) + isnull(coeff7 * otherfactor3,0),0)
when a.year = @yearfour then
isnull(Intercept + isnull(coeff1 * gdp4,0) + isnull(coeff2 * Unemployement4,0 )+ isnull(coeff3 * Inflation4,0) + isnull(coeff4 * erosion4,0) 
+ isnull(coeff5 * ForegnEx4,0) + isnull(coeff6 * Others4,0) + isnull(coeff7 * otherfactor4,0),0)
when a.year = @yearfive then
isnull(Intercept + isnull(coeff1 * gdp5,0) + isnull(coeff2 * Unemployement5,0 )+ isnull(coeff3 * Inflation5,0) + isnull(coeff4 * erosion5,0) 
+ isnull(coeff5 * ForegnEx5,0) + isnull(coeff6 * Others5,0) + isnull(coeff7 * otherfactor5,0),0) 

when a.year = @yearsix then
isnull(Intercept + isnull(coeff1 * gdp6,0) + isnull(coeff2 * Unemployement6,0 )+ isnull(coeff3 * Inflation6,0) + isnull(coeff4 * erosion6,0) 
+ isnull(coeff5 * ForegnEx6,0) + isnull(coeff6 * Others6,0) + isnull(coeff7 * otherfactor6,0),0) 

when a.year = @yearseven then
isnull(Intercept + isnull(coeff1 * gdp7,0) + isnull(coeff2 * Unemployement7,0 )+ isnull(coeff3 * Inflation7,0) + isnull(coeff4 * erosion7,0) 
+ isnull(coeff5 * ForegnEx7,0) + isnull(coeff6 * Others7,0) + isnull(coeff7 * otherfactor7,0),0) 
end as lifetimepd,

case when c.PD < b.Significant2 then
'12 Months ECL'
else
'Life Time ECL ' end as pdtype,a.LoanReferenceNumber,a.productCode
 from @tab1 a left outer join credit_product b on a.productCode = b.ProductCode left outer join credit_customerloanpd_history_final c on a.LoanReferenceNumber = c.LoanReferenceNumber

 update a set a.lifetimepd =   case 
 when year(b.MaturityDate) - @runyear = 0 then 
 a.pd1
 when year(b.MaturityDate) - @runyear = 1 then
 a.pd2 
  when year(b.MaturityDate) - @runyear = 2 then
 a.pd3 
  when year(b.MaturityDate) - @runyear = 3 then
 a.pd4
  when year(b.MaturityDate) - @runyear = 4 then
 a.pd5 
  when year(b.MaturityDate) - @runyear = 5 then
 a.pd6 
  when year(b.MaturityDate) - @runyear = 6 then
 a.pd7 end 
 from @tab a left outer join credit_individualapplicationscorecard_history b on a.LoanReferenceNumber = b.LoanReferenceNumber



 delete from ifrs_forecasted_pd where RunDate = @RunDate
 insert into ifrs_forecasted_pd(Year, PD1, PD2, PD3, PD4, PD5, PD6, PD7, LifeTimePD, PDType, ApplicablePD, ProductCode, LoanReferenceNumber, RunDate, Active, Deleted)
 select Year, isnull(PD1,0), isnull(PD2,0), isnull(PD3,0), isnull(PD4,0), isnull(PD5,0), isnull(PD6,0), isnull(PD7,0),
  isnull(LifeTimePD,0), PDType, ApplicablePD, ProductCode, LoanReferenceNumber,@RunDate,1,0 from @tab
 where year >= @runyear


 end


