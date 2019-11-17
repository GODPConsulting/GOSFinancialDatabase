


CREATE proc [dbo].[spp_ifrs_Dummy_table]
@columnNumber int

as
if @columnNumber =1
begin
CREATE TABLE ifrs_Regression_Variable ( y     float,x1    float)
end
if @columnNumber =2
begin
CREATE TABLE ifrs_Regression_Variable ( y     float,x1    float, x2    float)
end
if @columnNumber =3
begin
CREATE TABLE ifrs_Regression_Variable ( y     float,x1    float, x2    float, x3    float)
end
if @columnNumber =4
begin
CREATE TABLE ifrs_Regression_Variable ( y     float,x1    float, x2    float, x3    float,x4    float)
end
if @columnNumber =5
begin
CREATE TABLE ifrs_Regression_Variable ( y     float,x1    float, x2    float, x3    float,x4    float,x5 float)
end



