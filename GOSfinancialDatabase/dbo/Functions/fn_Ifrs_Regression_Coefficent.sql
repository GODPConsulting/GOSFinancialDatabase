
create function [dbo].[fn_Ifrs_Regression_Coefficent]

(  )
returns @Coeffient table (Intercept float, m1 float,m2 float, m3 float , m4 float, m5 float,m6 float,m7 float)
as
begin

declare @Sector table (ID int identity(1,1) ,sector varchar(5))

declare @tab table (id int identity(1,1) not null, mo float,m1 float,m2 float,m3 float,m4 float,m5 float,m6 float,m7 float)
insert into @tab(mo,m1,m2,m3,m4,m5,m6,m7)

SELECT
    top 1   isnuLL([0],0),isnull([1],0),isnuLL([2],0),isnuLL([3],0),isnull([4],0),isnull([5],0),isnull([6],0),isnull([7],0)
FROM (
      SELECT
            stat_name,
            idx,
            stat_val
      FROM
             wct.LINEST('ifrs_Regression_Variable'  ,'*'  ,''  ,NULL  ,1    ,'True'    )
      WHERE
            idx IS NOT NULL
      )d
PIVOT(
      SUM(stat_val)
FOR
      idx
IN
      ([0],[1],[2],[3],[4],[5],[6],[7])
      ) P
ORDER BY stat_name 


insert into @Coeffient(Intercept,m1,m2,m3,m4,m5,m6,m7)
select     mo,m1,m2,m3,m4,m5,m6,m7 from @tab 

return
end
