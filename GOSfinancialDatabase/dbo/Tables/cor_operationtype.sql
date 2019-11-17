CREATE TABLE [dbo].[cor_operationtype] (
    [OperationTypeId]   INT           NOT NULL,
    [ModuleId]          INT           NOT NULL,
    [OperationTypeName] VARCHAR (250) NOT NULL,
    [Active]            BIT           NULL,
    [Deleted]           BIT           NULL,
    [CreatedBy]         VARCHAR (50)  NULL,
    [CreatedOn]         DATETIME      NULL,
    [UpdatedBy]         VARCHAR (50)  NULL,
    [UpdatedOn]         DATETIME      NULL,
    CONSTRAINT [PK_cor_operationtype] PRIMARY KEY CLUSTERED ([OperationTypeId] ASC)
);

