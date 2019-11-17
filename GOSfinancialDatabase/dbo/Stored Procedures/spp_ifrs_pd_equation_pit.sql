


CREATE proc [dbo].[spp_ifrs_pd_equation_pit]
(  @type int,@rundate date,@LoanReferenceNumber varchar(50))
as
declare @coll nvarchar(MAX), @max int,@rct int=1,@x varchar(50)
declare @loop table (variable varchar(50),position int)
DECLARE @SplitStartPos int = 1,@coef1 float,@coef2 float,@coef3 float
,@coef4 float,@coef5 float,@coef6 float,@coef7 float,@pd float,@intercept float

if @type=1
select  @intercept=intercept,  @coef1=coeff1 ,@coef2 =coeff2,@coef3=coeff3 ,@coef4=coeff4 ,@coef5=coeff5 ,@coef6=coeff6 ,@coef7 =coeff7 ,@pd=PD_Computed  from ifrs_Var_Coeff_Comp_PD
 where LoanReferenceNumber=@LoanReferenceNumber
 	if @type=2
	select  @intercept=intercept, @coef1=coeff1 ,@coef2 =coeff2,@coef3=coeff3 ,@coef4=coeff4 ,@coef5=coeff5 ,@coef6=coeff6 ,@coef7 =coeff7 ,@pd=lgd_Computed  from ifrs_var_coeff_comp_lgd
 where LoanReferenceNumber=@LoanReferenceNumber 

delete from ifrs_pit_formula where LoanReferenceNumber=@LoanReferenceNumber and type=@type and rundate=@rundate
				
 insert into @loop(variable,position)
		 select distinct Variable, position from  Ifrs_forecasted_macroeconimcs_mapping where LoanReferenceNumber =@LoanReferenceNumber  and type=1 and year =year(@rundate )
		 order by position


select @max = count(*) from @loop 
		set @coll=''
		  while @rct<=@max
		  begin
		  select @x= variable from @loop where position=@rct 
		  
		if @rct=1
		  set @coll = cast(@intercept as nvarchar(50)) +' '+ ' +' + ' ' +    cast(@coef1 as nvarchar(50)) + ' *' + '['+cast( @x as nvarchar(50))+ ']'+' ' + ' + '
		 
		 if @rct=2

		set @coll=	iif( @max>2 ,cast(@coll as nvarchar(max)) +'  ' +  cast(@coef2 as nvarchar(50)) + ' *'+ '['+cast( @x as nvarchar(50))+ ']'+ ' '  + ' + ',
		 cast(@coll as nvarchar(max)) +'  ' +  cast(@coef2 as nvarchar(50)) + ' *'+ '['+cast( @x as nvarchar(50))+ ']')
		 
		 
		 		if @rct=3
		  set @coll = iif( @max>3 ,   cast(@coll as nvarchar(max)) +'  ' + cast(@coef3 as nvarchar(50)) + ' *'+ '['+cast( @x as nvarchar(50))+ ']' + ' ' +  ' + ',
						cast(@coll as nvarchar(max)) +'  ' + cast(@coef3 as nvarchar(50)) +  ' *'+ '['+cast( @x as nvarchar(50))+ ']')
		
		 		if @rct=4
		  set @coll =iif(@max>4, cast(@coll as nvarchar(max)) +'  ' +  cast(@coef4 as nvarchar(50))+ ' * '+ '['+cast( @x as nvarchar(50))+ ']'+ ' '  + ' + ',
						cast(@coll as nvarchar(max)) +'  ' +  cast(@coef4 as nvarchar(50))+ ' *'+ '['+cast( @x as nvarchar(50))+ ']')

		 		if @rct=5
		  set @coll = iif(@max>5,cast(@coll as nvarchar(max)) +'  ' + cast(@coef5 as nvarchar(50)) + '   ' + '  *  '+ '['+cast( @x as nvarchar(50))+ ']' + ' ' +  ' + '
						,cast(@coll as nvarchar(max)) +'' + cast(@coef5 as nvarchar(50)) + '  *  '+ '['+cast( @x as nvarchar(50))+ ']')

		 		if @rct=6
		  set @coll = iif(@max>3,cast(@coll as nvarchar(max)) +'  ' +  cast(@coef6 as nvarchar(50))+ '   '  +'*'+ '['+cast( @x as nvarchar(50))+ ']'+ ''  + ' + ',
					cast(@coll as nvarchar(max)) +'  ' +  cast(@coef6 as nvarchar(50))+ '   '  +'  *  '+ '['+cast( @x as nvarchar(50))+ ']')


		  if @rct=7
		   set @coll = iif(@max=7,cast(@coll as nvarchar(max)) + '  ' + cast(@coef7 as nvarchar(50))+ '   ' +  ' *' + '['+cast( @x as nvarchar(50))+ ']' ,
						cast(@coll as nvarchar(max)) + '  ' + cast(@coef7 as nvarchar(50))+ '   ' +  ' *'+ '['+cast( @x as nvarchar(50))+ ']')
		  
		  set @rct +=1;
		  end
		  select @max 
		  insert into ifrs_pit_formula(LoanReferenceNumber,Equation,ComputedPd,rundate,[type])
		 
		  select  @LoanReferenceNumber, @coll,@pd ,@rundate ,@type


		--exec  cor_auto_complete_table ifrs_pit_formula
		 


