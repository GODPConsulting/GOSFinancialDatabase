CREATE TABLE [dbo].[cor_operation] (
    [OperationId]     INT           NOT NULL,
    [OperationName]   VARCHAR (250) NOT NULL,
    [OperationTypeId] INT           NOT NULL,
    [EnableWorkflow]  BIT           NOT NULL,
    [Active]          BIT           NULL,
    [Deleted]         BIT           NULL,
    [CreatedBy]       VARCHAR (50)  NULL,
    [CreatedOn]       DATETIME      NULL,
    [UpdatedBy]       VARCHAR (50)  NULL,
    [UpdatedOn]       DATETIME      NULL,
    CONSTRAINT [PK_cor_operation] PRIMARY KEY CLUSTERED ([OperationId] ASC),
    CONSTRAINT [FK_cor_operation_cor_operationtype] FOREIGN KEY ([OperationTypeId]) REFERENCES [dbo].[cor_operationtype] ([OperationTypeId])
);

