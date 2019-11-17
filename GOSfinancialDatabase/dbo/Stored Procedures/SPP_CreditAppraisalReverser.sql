
CREATE proc [dbo].[SPP_CreditAppraisalReverser] --2088
(
@id as int
)

AS
begin
Declare @TargetId as int,@count as int,@responseStaffId int
select  @count = Count(*) from cor_workflowtrail where TargetId = @id

if(@count > 1)
begin
select top 1 @TargetId = WorkflowTrailId, @responseStaffId = RequestStaffId  from cor_workflowtrail where TargetId = @id order by WorkflowTrailId desc
update cor_workflowtrail set ResponseStaffId = Null  where ResponseStaffId =@responseStaffId and TargetId = @id
delete from cor_workflowtrail where WorkflowTrailId = @TargetId
end
end

