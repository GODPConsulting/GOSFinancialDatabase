



CREATE proc [dbo].[spp_ifrs_regression_Analysis_pd]
--@startdate date
as
------------------------------
DECLARE @tab TABLE (
  id int IDENTITY (1, 1) NOT NULL,
  PD float,
  variable1 float,
  variable2 float,
  variable3 float,
  variable4 float,
  variable5 float
)

DECLARE @countTab TABLE (
  id int IDENTITY (1, 1) NOT NULL,
  maxcount int
)
DECLARE @tab2 TABLE (
  id int IDENTITY (1, 1) NOT NULL,
  Intercept float,
  m1 float,
  m2 float,
  m3 float,
  m4 float,
  m5 float,
  m6 float,
  m7 float,
  year int,
  LoanReferenceNumber varchar(50),
  productCode varchar(20)
)
DECLARE @tab4 TABLE (
  id int IDENTITY (1, 1) NOT NULL,
  Year int,
  variable1 float,
  variable2 float,
  variable3 float,
  variable4 float,
  variable5 float,
  LoanReferenceNumber varchar(50),
  productCode varchar(20)
)
DECLARE @tab3 TABLE (
  id int IDENTITY (1, 1) NOT NULL,
  Stat_name varchar(20),
  idx int,
  stat_val float
)
DECLARE @var1 float,
		@var2 float,
        @var5 float,
        @var3 float,
        @var4 float,@var7 float,@var6 float,
        @rnct int = 1,
        @rtmax int,
        @LoanReferenceNumber varchar(200),
		@productCode varchar(20),
        @sqlStm varchar(max),
        @rundate date,
        @insertStm varchar(500),
        @CustomerName varchar(250), 
		@cols AS NVARCHAR(MAX),@query  AS NVARCHAR(MAX),@columncount int,
		@start_historicalyear int,@end_historical int,@historicalcount int,
		@startperiod as varchar(6),@endperiod varchar(6),@countrow int,@colls AS NVARCHAR(MAX),@queryy  AS NVARCHAR(MAX),@year varchar(5),
		@x nvarchar(50),@coll2 nvarchar(max)
	---------------------Variable table to hold distinct Sector Code that we are consedring for the period-------------------
DECLARE @tab1 TABLE (
  ID int IDENTITY (1, 1),
  LoanReferenceNumber varchar(200),
  CustomerName varchar(200),
  ProductCode varchar(200),
  ProductName varchar(200),
  Year int,
  PD float
)
DECLARE @regress TABLE 
(ID int identity(1,1), LoanReferenceNumber varchar(200),productCode varchar(20),GDp float,Unemployement float,Inflation float,
erosion float, ForegnEx float,Others float, otherfactor float,year int )

DECLARE @regress2 TABLE 
(ID int identity(1,1), LoanReferenceNumber varchar(200),productCode varchar(20),GDp float,Unemployement float,Inflation float,
erosion float, ForegnEx float,Others float, otherfactor float,year int )
declare @loop table (variable varchar(50),position int)
declare @loop2 table (variable varchar(50),position int)
declare @count int ,@rmax int, @rct int=1,@coll nvarchar(max)

----------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------Delete records if exists for this rundate in ifrs_Regress_MacroEco_Variable------------------------
-----------ifrs_Regress_MacroEco_Variable table holds regression coefficent parameters and the  current macro-economics variables------------------
	delete from ifrs_regress_macro_variable where Rundate=@rundate
--	INSERT INTO @Sector (sector,Description)

---------------------Get distinct Sector code that are active---------------------------------
--  SELECT DISTINCT
--    code,description
--  FROM ifrs_sector_listing
--  WHERE active = 1 
  ----------------Drop a dynamic table ifrs_Regression_Variable statement---------------------
					SET @sqlStm = 'Drop table  ifrs_Regression_Variable'

-----------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
------------------Get historical period date start and end------------------------------------
select @historicalcount=Historical_PD_Year_Count, @rundate=RunDate  from ifrs_setup_data
set @start_historicalyear =YEAR(@rundate)-@historicalcount
set @end_historical=year(@rundate )-1
  select @startperiod=cast(@start_historicalyear as varchar(5)),@endperiod=cast(@end_historical as varchar(5))
  select @startperiod as zzzzz,@endperiod as dddddd


    ----------------Delete existings records for the period running-----------------------------------
		 truncate table ifrs_regress_macro_variable
        delete from  [Ifrs_forecasted_macroeconimcs_mapping] where rundate=@rundate and Type=1
		delete from ifrs_product_regressed_pd where  rundate=@rundate 
	     delete  ifrs_Var_Coeff_Comp_PD where   rundate=@rundate
	    delete from ifrs_computed_forcasted_pd_lgd where rundate=@rundate and Type=1
  ------------------------------Get distinct code-----------------------------------------------------------------------
  INSERT INTO @tab1 (ProductCode)
 select distinct a.ProductCode from [credit_customerloanpd_history_final] a join ifrs_macroeconomic_variables_year b
 --on a.year>=@startperiod 
		on a.year=b.year 
		where a.year>=@startperiod 

select * from @tab1
  ------------------------------------------------------------------------------------------------------------------
SELECT
  @rtmax = COUNT(*)
FROM @tab1

select @rtmax
------------------------------------------------------------------------------------------------------------------------------------------------------

WHILE @rnct <= @rtmax

BEGIN
  SELECT
 @ProductCode = ProductCode
  FROM @tab1
  WHERE id = @rnct
 
   DELETE ifrs_product_regressed_pd
   WHERE year = YEAR(@rundate) and ProductCode =@ProductCode

   	 delete from @loop2
  delete from @loop
  delete from @regress
  delete from @regress2

--   -----------------------Get the number of micro-economics variables per sector for historical------------------------------------------
--   insert into @loop(variable,position)
--		 select distinct Variable, position from  [ifrs_historical_macroeconimcs_mapping] where productId=@productId and type=1 and year between @startperiod and @endperiod
--		 order by position
--		------------------------------------------Get the number of micro-economics variables per sector for Pit and forcasted years-------------------------------------------------------------------------------------
--		   insert into @loop2(variable,position)
--		 select distinct Variable, position from  Ifrs_forecasted_macroeconimcs_mapping where productId=@productId  and type=1 and year =year(@rundate)
--		 order by position

--	---------------------------------Get the list of variables for historical--====================================---------------------------------------=============================
--						declare @max int,@max2 int
--							select @max = count(*) from @loop 
--		set @coll=''
--		  while @rct<=@max
--		  begin
--		  select @x= variable from @loop where position=@rct 
		  
--		if @rct<@max
--		  set @coll = cast(@coll as nvarchar(max)) +''+ '['+cast( @x as nvarchar(50))+ ']'+ ','
--		  if @rct=@max
--		   set @coll = cast(@coll as nvarchar(max)) +''+ '['+cast( @x as nvarchar(50))+ ']'
--		  set @rct +=1;
--		  end
		
--	------------------======================Get the list of variables for Present/future=========================------------===============================	  --------------------------------------
--		  select @max2 = count(*) from @loop2 
--					set @coll2=''
--					set @rct=1
--		  while @rct<=@max2
--		  begin
--		  select @x= variable from @loop2 where position=@rct 
		  
--		if @rct<@max2
--		  set @coll2 = cast(@coll2 as nvarchar(max)) +''+ '['+cast( @x as nvarchar(50))+ ']'+ ','
--		  if @rct=@max2
--		   set @coll2 = cast(@coll2 as nvarchar(max)) +''+ '['+cast( @x as nvarchar(50))+ ']'
--		  set @rct +=1;
	
--		  end

--		  set @rct=1
-------------------------==========================================------------------------------------------------======================================
-----------------------------------------------------------------------------------------------------------------------
--	--set @columncount= (select len(@coll)-len(replace(@coll,',',''))+1)

set @historicalcount = (select Historical_PD_Year_Count  from  ifrs_setup_data )
set @year=cast(year(@rundate) as varchar(5))
declare @max int,@max2 int
insert into @countTab(maxcount)
--SELECT top 1
--  ((CASE WHEN variable1 IS NULL THEN 1 ELSE 0 END)
--  + (CASE WHEN variable2 IS NULL THEN 1 ELSE 0 END)
--  + (CASE WHEN variable3 IS NULL THEN 1 ELSE 0 END)
--  + (CASE WHEN variable4 IS NULL THEN 1 ELSE 0 END)
--  + (CASE WHEN variable5 IS NULL THEN 1 ELSE 0 END)
--  + (CASE WHEN variable6 IS NULL THEN 1 ELSE 0 END)
--  + (CASE WHEN variable7 IS NULL THEN 1 ELSE 0 END)) AS sum_of_nulls
SELECT top 1
  ((CASE WHEN variable1 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN variable2 IS NULL THEN 1 ELSE 0 END)
  + (CASE WHEN variable3 IS NULL THEN 1 ELSE 0 END)) AS sum_of_nulls
FROM credit_customerloanpd_history_final where ProductCode =@ProductCode

select * from @countTab

----------------------------------------------Get historical Macroeconomics variables-----------------------------------------------------
--SELECT @query = 
--		'select LoanReferenceNumber,year,variable1,variable2,variable3,variable4,variable5,variable6,variable7 from [credit_customerloanpd_history_final] where LoanReferenceNumber=' + ''''+@LoanReferenceNumber+''' and year <' + @year + ''
--------------------------------------------------------------------------------------------------------------------------------------------
------------------===========================================Get  present and future variables--==============----------------------------
--SELECT @queryy = 
--		'select LoanReferenceNumber,year,variable1,variable2,variable3,variable4,variable5,variable6,variable7 from [credit_customerloanpd_history_final] where LoanReferenceNumber=' + ''''+@LoanReferenceNumber+'''  and year <=' + @year + ''

----------------compare the historical number count with variable number counts----------------------------------

select @max2 = maxcount from @countTab 
set @max = 3-@max2
--set @max =2
--set @historicalcount = 3
select @max as maximum ,@historicalcount as history, @max2
if @historicalcount<=@max+1

begin

	if @max = 1
	begin	
	
	SELECT @query = 
		'select LoanReferenceNumber,productCode,year,variable1 from [credit_customerloanpd_history_final] where productCode=' + ''''+@productCode+''' and year <=' + @year + ''
------------------------------------------------------------------------------------------------------------------------------------------
----------------===========================================Get  present and future variables--==============----------------------------
SELECT @queryy = 
		'select LoanReferenceNumber,productCode,year,variable1 from [credit_customerloanpd_history_final] where productCode=' + ''''+@productCode+''' and year <=' + @year + ''
		
				
	insert into @regress(LoanReferenceNumber,productCode,year,GDp)
			EXEC  (@query)
	---------------------------------------------------
	insert into @regress2(LoanReferenceNumber,productCode,year,GDp)
			EXEC ( @queryy)
end
	if @max = 2
	begin	
	
	SELECT @query = 
		'select LoanReferenceNumber,productCode,year,variable1,variable2 from [credit_customerloanpd_history_final] where productCode=' + ''''+@productCode+''' and year <=' + @year + ''
------------------------------------------------------------------------------------------------------------------------------------------
----------------===========================================Get  present and future variables--==============----------------------------
SELECT @queryy = 
		'select LoanReferenceNumber,productCode,year,variable1,variable2 from [credit_customerloanpd_history_final] where productCode=' + ''''+@productCode+''' and year <=' + @year + ''
		
				
	insert into @regress(LoanReferenceNumber,productCode,year,GDp,Unemployement)
			EXEC  (@query)
	---------------------------------------------------
	insert into @regress2(LoanReferenceNumber,productCode,year,GDp,Unemployement)
			EXEC ( @queryy)
end
	if @max =3
	begin

	SELECT @query = 
	'select LoanReferenceNumber,productCode,year,variable1,variable2,variable3 from [credit_customerloanpd_history_final] where productCode=' + ''''+@productCode+''' and year <=' + @year + ''
		--'select productCode,year,sum(variable1),sum(variable2),sum(variable3) from [credit_customerloanpd_history_final] where productCode=' + ''''+@productCode+'''  and year between ' +@startperiod + ' and '+@endperiod +' group by productCode,year'
------------------------------------------------------------------------------------------------------------------------------------------
----------------===========================================Get  present and future variables--==============----------------------------
SELECT @queryy = 
		--'select productCode,year,sum(variable1),sum(variable2),sum(variable3) from [credit_customerloanpd_history_final] where productCode=' + ''''+@productCode+'''  and year <=' + @year + ' group by productCode,year'
		'select LoanReferenceNumber,productCode,year,variable1,variable2,variable3 from [credit_customerloanpd_history_final] where productCode=' + ''''+@productCode+''' and year <=' + @year + ''
		insert into @regress(LoanReferenceNumber,productCode,year,GDp,Unemployement,Inflation)
		EXEC SP_EXECUTESQL @query
		-------------------------------------------------------------------
		insert into @regress2(LoanReferenceNumber,productCode,year,GDp,Unemployement,Inflation)
		EXEC SP_EXECUTESQL @queryy
		end
	if @max=4
	begin

	SELECT @query = 
		'select LoanReferenceNumber,productCode,year,variable1,variable2,variable3,variable4 from [credit_customerloanpd_history_final] where productCode=' + ''''+@productCode+''' and year <=' + @year + ''
------------------------------------------------------------------------------------------------------------------------------------------
----------------===========================================Get  present and future variables--==============----------------------------
SELECT @queryy = 
		'select LoanReferenceNumber,productCode,year,variable1,variable2,variable3,variable4 from [credit_customerloanpd_history_final] where productCode=' + ''''+@productCode+''' and year <=' + @year + ''
			insert into @regress(LoanReferenceNumber,productCode,year,GDp,Unemployement,Inflation,erosion)
		EXEC SP_EXECUTESQL @query
			------------------------------------------------------------------
			insert into @regress2(LoanReferenceNumber,productCode,year,GDp,Unemployement ,Inflation,erosion)
			EXEC SP_EXECUTESQL @queryy
			end


	if @max=5
	begin

	SELECT @query = 
		'select LoanReferenceNumber,productCode,year,variable1,variable2,variable3,variable4,variable5 from [credit_customerloanpd_history_final] where productCode=' + ''''+@productCode+''' and year <=' + @year + ''
------------------------------------------------------------------------------------------------------------------------------------------
----------------===========================================Get  present and future variables--==============----------------------------
SELECT @queryy = 
		'select LoanReferenceNumber,productCode,year,variable1,variable2,variable3,variable4,variable5 from [credit_customerloanpd_history_final] where productCode=' + ''''+@productCode+''' and year <=' + @year + ''
			insert into @regress2(LoanReferenceNumber,productCode,year,GDp,Unemployement,Inflation,erosion,ForegnEx )
			EXEC SP_EXECUTESQL @query
			---------------------------------------------------------------------------------
	insert into @regress(LoanReferenceNumber,productCode,year,GDp,Unemployement,Inflation,erosion,ForegnEx )
			EXEC SP_EXECUTESQL @queryy
			end
	if @max=6
	begin
	SELECT @query = 
		'select LoanReferenceNumber,productCode,year,variable1,variable2,variable3,variable4,variable5,variable6 from [credit_customerloanpd_history_final] where productCode=' + ''''+@productCode+''' and year <=' + @year + ''
------------------------------------------------------------------------------------------------------------------------------------------
----------------===========================================Get  present and future variables--==============----------------------------
SELECT @queryy = 
		'select LoanReferenceNumber,productCode,year,variable1,variable2,variable3,variable4,variable5,variable6 from [credit_customerloanpd_history_final] where productCode=' + ''''+@productCode+''' and year <=' + @year + ''
			insert into @regress(LoanReferenceNumber,productCode,year,GDp,Unemployement,Inflation,erosion,ForegnEx,Others )
			EXEC SP_EXECUTESQL @query
			-----------------------------------------------------------------------------------------
				insert into @regress2(LoanReferenceNumber,productCode,year,GDp,Unemployement,Inflation,erosion,ForegnEx,Others )
			EXEC SP_EXECUTESQL @queryy
			end
	if @max=7
	begin
	SELECT @query = 
		'select LoanReferenceNumber,productCode,year,variable1,variable2,variable3,variable4,variable5,variable6,variable7 from [credit_customerloanpd_history_final] where productCode=' + ''''+@productCode+''' and year <=' + @year + ''
------------------------------------------------------------------------------------------------------------------------------------------
----------------===========================================Get  present and future variables--==============----------------------------
SELECT @queryy = 
		'select LoanReferenceNumber,productCode,year,variable1,variable2,variable3,variable4,variable5,variable6,variable7 from [credit_customerloanpd_history_final] where productCode=' + ''''+@productCode+''' and year <=' + @year + ''
				insert into @regress(LoanReferenceNumber,productCode,year,GDp,Unemployement,Inflation,erosion,ForegnEx,Others,otherfactor)
				EXEC SP_EXECUTESQL @query
-------------------------------------------------------------------------------------------------------
	insert into @regress2(LoanReferenceNumber,productCode,year,GDp,Unemployement,Inflation,erosion,ForegnEx,Others,otherfactor)
				EXEC SP_EXECUTESQL @queryy
				end
SELECT @query
SELECT @queryy
select * from @regress
select * from @regress2
	
	--delete from ifrs_regress_macro_variable where ProductCode = @productCode
	truncate table ifrs_regress_macro_variable
  INSERT INTO ifrs_regress_macro_variable(PD, variable1, variable2, variable3, variable4, variable5, productCode,Year)

      SELECT
	  a.PD ,
      b.GDp ,
      b.Unemployement ,
      b.Inflation,
      b.erosion,
      b.ForegnEx,
      b.productCode,
	  b.year 
    FROM 

		credit_customerloanpd_history_final  a join @regress b on a.productCode=b.productCode and b.LoanReferenceNumber  = a.LoanReferenceNumber
		where  a.productCode =@productCode 
		--and b.LoanReferenceNumber  = a.LoanReferenceNumber
 ORDER BY a.Year

 --   SELECT
 --    a.PD ,
 --     b.GDp ,
 --     b.Unemployement ,
 --     b.Inflation,
 --     b.erosion,
 --     b.ForegnEx,
 --     b.productCode,
	--  b.year 
 --   FROM 

	--	credit_customerloanpd_history_final  a join @regress b on a.productCode=b.productCode and b.year  = a.Year
	--	where b.year  between @startperiod and @endperiod and a.productCode =@productCode and b.year  = a.Year
 --ORDER BY a.Year
		--where b.year  = a.Year and a.productCode=b.productCode
--where b.year  between @startperiod and @endperiod 
 --ORDER BY a.Year

--	credit_customerloanpd_history_final  a join @regress b on a.LoanReferenceNumber=b.LoanReferenceNumber and a.Year=b.year 
--where b.year  between @startperiod and @endperiod and a.LoanReferenceNumber =@LoanReferenceNumber
-- ORDER BY a.Year


 select * from ifrs_regress_macro_variable
 select @max


  SELECT top 1 @var1=isnull(variable1,0),
  @var2 = isnull(variable2,0),
    @var3 = isnull(variable3,0),
    @var4 = isnull(variable4,0),
    @var5 = isnull(variable5,0)
  FROM ifrs_regress_macro_variable
  WHERE   productCode =@productCode

   --EXEC spp_ifrs_Dummy_table @max
   -- EXEC (@sqlStm)

  IF @max = 1
  BEGIN
    --------------exec procedure to temporary table with two variable
    EXEC spp_ifrs_Dummy_table 1
    --------------------------------------------------------------
    --SET @insertStm = 'insert into ifrs_Regression_Variable(y,x1)    
				--select  PD,variable1 from ifrs_regress_macro_variable where LoanReferenceNumber ='  +''''+ 
				--cast(  @LoanReferenceNumber  as varchar(66))+'''' 

				SET @insertStm = 'insert into ifrs_Regression_Variable(y,x1)    
				select  PD,variable1 from ifrs_regress_macro_variable where where productCode ='  +''''+ 
				cast(  @productCode  as varchar(66))+'''' 
    
    EXEC (@insertStm)

	 --insert into ifrs_xxxxx(y,x1,x2,x3)
	  --select * from ifrs_Regression_Variable
    -------------------------Get the regressed coefficents output------------------------------------------------------
      INSERT INTO @tab2 (Intercept, m1, m2, m3, m4, m5, productCode)
        SELECT
          Intercept,
          m1,
          m2,
          m3,
          m4,
          m5,
          @productCode
        FROM dbo.fn_Ifrs_Regression_Coefficent()
    ----------------------------------------------------------------------------------------
    -----drop the temporary table-----------
    EXEC (@sqlStm)
	end

   IF @max = 2
  BEGIN
    --------------exec procedure to temporary table with two variable
    EXEC spp_ifrs_Dummy_table 2
    --------------------------------------------------------------
    SET @insertStm = 'insert into ifrs_Regression_Variable(y,x1,x2)    
				select  PD,variable1,variable2 from ifrs_regress_macro_variable where productCode ='  +''''+ 
				cast(  @productCode  as varchar(66))+''''  
    
    EXEC (@insertStm)
    -------------------------Get the regressed coefficents output------------------------------------------------------
       INSERT INTO @tab2 (Intercept, m1, m2, m3, m4, m5, productCode)
        SELECT
          Intercept,
          m1,
          m2,
          m3,
          m4,
          m5,
          @productCode
        FROM dbo.fn_Ifrs_Regression_Coefficent()
    ----------------------------------------------------------------------------------------
    -----drop the temporary table-----------
    EXEC (@sqlStm)
	end
 
	IF @max =3
    BEGIN
      --------------exec procedure to create dummy table with three maccro-economics variable variable
      EXEC spp_ifrs_Dummy_table 3
      ------Exec function with three variables
      ---------Insert into the table------------
      SET @insertStm = 'insert into ifrs_Regression_Variable(y,x1,x2,x3)    
				select  PD,variable1,variable2,variable3 from ifrs_regress_macro_variable  where productCode ='  +''''+ 
				cast(  @productCode  as varchar(66))+''''  
      ----------------------------------------------------------------------------
      EXEC (@insertStm)
	  --truncate table ifrs_xxxxx
	  --insert into ifrs_xxxxx(y,x1,x2,x3)
	  --select * from ifrs_Regression_Variable

	  --select * from ifrs_xxxxx
     -------------------------Get the regressed coefficents output------------------------------------------------------
      INSERT INTO @tab2 (Intercept, m1, m2, m3, m4, m5, productCode)
        SELECT
          Intercept,
          m1,
          m2,
          m3,
          m4,
          m5,
          @productCode
        FROM dbo.fn_Ifrs_Regression_Coefficent()
      --------------------------------------------------------------------------------
      -----drop the table-----------
      EXEC (@sqlStm)
    END

    IF @max =4
    BEGIN
	select 4 'rows'
      --------------exec procedure to create dummy table with four macro-economics variable variable
      EXEC spp_ifrs_Dummy_table 4
      ------------------------------------------------------------------------
      SET @insertStm = 'insert into ifrs_Regression_Variable(y,x1,x2,x3,x4)    
				select  PD,variable1,variable2,variable3,variable4 from ifrs_regress_macro_variable  where productCode ='  +''''+ 
				cast(  @productCode  as varchar(66))+''''  

      -------------------------------------------------------------------
      EXEC (@insertStm)
    -------------------------Get the regressed coefficents output------------------------------------------------------
      INSERT INTO @tab2 (Intercept, m1, m2, m3, m4, m5, productCode)
        SELECT
          Intercept,
          m1,
          m2,
          m3,
          m4,
          m5,
          @productCode
        FROM dbo.fn_Ifrs_Regression_Coefficent()
      --------------------------------------------------------------------------------
      -----drop the table-----------
      EXEC (@sqlStm)
    END

    IF @max = 5
    BEGIN
      --------------exec procedure to create dummy table with five macro-economics variable
      EXEC spp_ifrs_Dummy_table 5
      -----------------------------------------------------------------------------------
      SET @insertStm = 'insert into ifrs_Regression_Variable(y,x1,x2,x3,x4,x5)    
				select  PD,variable1,variable2,variable3,variable4,variable5  from ifrs_regress_macro_variable   where productCode ='  +''''+ 
				cast(  @productCode  as varchar(66))+''''  
      -------------------------------------------------------------------------------
      EXEC (@insertStm)
      -------------------------Get the regressed coefficents output------------------------------------------------------
      INSERT INTO @tab2 (Intercept, m1, m2, m3, m4, m5, productCode)
        SELECT
          Intercept,
          m1,
          m2,
          m3,
          m4,
          m5,
          @productCode
        FROM dbo.fn_Ifrs_Regression_Coefficent()
      -----drop the table---------------------------------------------------------------
      EXEC (@sqlStm)
    END

	IF @max =6 
    BEGIN
      --------------exec procedure to create dummy table with five macro-economics variable
      EXEC spp_ifrs_Dummy_table 6
      -----------------------------------------------------------------------------------
      SET @insertStm = 'insert into ifrs_Regression_Variable(y,x1,x2,x3,x4,x5,x6)    
				select  PD,variable1,variable2,variable3,variable4,variable5,variable6 from ifrs_regress_macro_variable   where productCode ='  +''''+ 
				cast(  @productCode  as varchar(66))+''''  
      -------------------------------------------------------------------------------
      EXEC (@insertStm)
      -------------------------Get the regressed coefficents output------------------------------------------------------
      INSERT INTO @tab2 (Intercept, m1, m2, m3, m4, m5, productCode)
        SELECT
          Intercept,
          m1,
          m2,
          m3,
          m4,
          m5,
          @productCode
        FROM dbo.fn_Ifrs_Regression_Coefficent()
      -----drop the table---------------------------------------------------------------
      EXEC (@sqlStm)
    END

	IF  @max =7
    BEGIN
      --------------exec procedure to create dummy table with five macro-economics variable
      EXEC spp_ifrs_Dummy_table 7
      -----------------------------------------------------------------------------------
      SET @insertStm = 'insert into ifrs_Regression_Variable(y,x1,x2,x3,x4,x5,x6,x7)    
				select  PD,variable1,variable2,variable3,variable4,variable5,variable6 ,variable7 from ifrs_regress_macro_variable   where productCode ='  +''''+ 
				cast(  @productCode  as varchar(66))+''''  
      INSERT INTO @tab2 (Intercept, m1, m2, m3, m4, m5, productCode)
      -------------------------------------------------------------------------------
      EXEC (@insertStm)
      -------------------------Get the regressed coefficents output------------------------------------------------------
        SELECT
          Intercept,
          m1,
          m2,
          m3,
          m4,
          m5,
          @productCode
        FROM dbo.fn_Ifrs_Regression_Coefficent()
      -----drop the table---------------------------------------------------------------
      EXEC (@sqlStm)
    END
--insert into ifrs_xxxxx(y,x1,x2,x3)
--select Intercept,
--          m1,
--          m2,
--          m3 from ifrs_Regression_Variable

select  @insertStm
select * from @tab2
---------------------------------------------------------------------------------------------------------------------
---------------------------------------Get the 12 month Pd------------------------------------------------------------------------------------

delete from ifrs_product_regressed_pd where ProductCode =@productCode
INSERT INTO ifrs_product_regressed_pd (LoanReferenceNumber,ProductCode, Year, AnnualPD, LifeTimePD, CompanyId,rundate, Active, Deleted, CreatedBy, UpdatedBy, UpdatedOn, CreatedOn)

select b.LoanReferenceNumber,  a.ProductCode,b.year,  isnull(a.Intercept,0) +(isnull(a.m1,0)*isnull(b.GDp,0))+ (isnull(a.m2,0)*isnull(b.Unemployement,0)) +(isnull(a.m3,0)*isnull(b.Inflation,0)) +(isnull(a.m4,0)*isnull(b.erosion,0) )
+ (isnull(a.m5,0)*isnull(b.ForegnEx,0)) + (isnull(a.m6,0)*isnull(b.Others,0)) + (isnull(a.m7,0)*isnull(b.otherfactor,0)),0,null,@rundate,1,0,'auto','auto',getdate(),getdate()  
from @tab2 a inner join @regress2 b  on a.ProductCode =b.ProductCode 
where b.year<=year(@rundate)

------------------------==================================================================================-------------------------------------
-- INSERT INTO ifrs_computed_forcasted_pd_lgd (ProductCode, Year, PD_LGD , rundate, Type, Active, Deleted, CreatedBy, UpdatedBy, UpdatedOn, CreatedOn) 

--select a.ProductCode, b.year,  isnuLl(a.Intercept,0) + (isnull(a.m1,0)*isnull(b.GDp,0))+ (isnull(a.m2,0)*isnull(b.Unemployement,0)) + (isnull(a.m3,0)*isnull(b.Inflation,0)) + (isnull(a.m4,0)*isnull(b.erosion,0) )
--+ (isnull(a.m5,0)*isnull(b.ForegnEx,0)) + (isnull(a.m6,0)*isnull(b.Others,0)) + (isnull(a.m7,0)*isnull(b.otherfactor,0)), @rundate,1,1,0, 'auto','auto',getdate(),getdate()  
-- from @tab2 a join @regress2 b  on a.ProductCode =b.ProductCode  
 --where b.year >=year(@rundate)

 delete from ifrs_Var_Coeff_Comp_PD where ProductCode =@productCode
   INSERT INTO ifrs_Var_Coeff_Comp_PD (LoanReferenceNumber,ProductCode, Year, Intercept, coeff1, coeff2, coeff3, coeff4, coeff5,
	  coeff6,coeff7, Macro_Var1, Macro_var2, Macro_var3, Macro_var4, Macro_var5,Macro_var6, Macro_var7, PD_Computed,
	 CompanyCode,rundate ,Active, Deleted, CreatedBy, UpdatedBy, UpdatedOn, CreatedOn)

	select b.LoanReferenceNumber,a.ProductCode, b.year,  a.Intercept , isnull(a.m1,0), isnull(a.m2,0),isnull(a .m3,0), isnull(a.m4,0) ,isnull(a.m5,0), isnull(a.m6,0), isnull(a.m7,0),
  isnull(b.GDp,0), isnull(b.Unemployement,0),isnull(b.Inflation,0),isnull(b.erosion,0), isnull(b.ForegnEx,0),isnull(b.Others,0) ,isnull(b.otherfactor,0),
  
  isnull(a.Intercept,0) + (isnull(a.m1,0)*isnull(b.GDp,0))+ (isnull(a.m2,0)*isnull(b.Unemployement,0)) + (isnull(a.m3,0)*isnull(b.Inflation,0)) + (isnull(a.m4,0)*isnull(b.erosion,0) )
	+(isnull(a.m5,0)*isnull(b.ForegnEx,0)) + (isnull(a.m6,0)*isnull(b.Others,0)) + (isnull(a.m7,0)*isnull(b.otherfactor,0) )PD_Computed
  
 ,'',@rundate  ,1,0, 'auto','auto',getdate(),getdate()  
 from @tab2 a inner join @regress2 b  on a.ProductCode =b.ProductCode  
 where b.year <=year(@rundate)

SET @rnct = @rnct + 1;

begin try

select @rundate,@LoanReferenceNumber 
  --exec spp_ifrs_pd_equation_pit 1,@rundate,@LoanReferenceNumber
  --exec spp_ifrs_Dummy_table
  end try

  begin catch

  end catch


end
	else
begin
-------throw exception------
 RAISERROR ('The degree of freedom must be n-1 degree of freedom', 15, 6) 
   RETURN 
end


 END



