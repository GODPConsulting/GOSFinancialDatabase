

create proc [dbo].[sp_Add_RegistryInformation]
(
@Industry varchar(150),
@NoteLine varchar(150), 
@Caption varchar(150), 
@ReportCaption varchar(150), 
@SubCaption varchar(150), 
@ParentCaption varchar(150), 
@SubLedger varchar(150), 
@Position int, 
@AccountTypeId int, 
@StatementTypeId int, 
@Active bit, 
@Deleted bit, 
@CreatedBy varchar(150), 
@CreatedOn datetime,  
@UpdatedBy varchar(150), 
@UpdatedOn datetime
)
as

begin
insert into fin_registry(Industry, NoteLine, Caption, ReportCaption, SubCaption, ParentCaption, SubLedger, Position, AccountTypeId, StatementTypeId, Active, Deleted, CreatedBy, CreatedOn, UpdatedBy, UpdatedOn)
values(@Industry, @NoteLine, @Caption, @ReportCaption, @SubCaption, @ParentCaption, @SubLedger, @Position, @AccountTypeId, @StatementTypeId, @Active, @Deleted, @CreatedBy, @CreatedOn, @UpdatedBy, @UpdatedOn)
end

