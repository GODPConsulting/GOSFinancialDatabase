CREATE TABLE [dbo].[deposit_changeofrates] (
    [ChangeOfRateId]  INT             IDENTITY (1, 1) NOT NULL,
    [Structure]       INT             NULL,
    [Product]         INT             NULL,
    [CurrentRate]     DECIMAL (18, 2) NULL,
    [ProposedRate]    DECIMAL (18, 2) NULL,
    [Reasons]         VARCHAR (500)   NULL,
    [ApproverName]    VARCHAR (50)    NULL,
    [ApproverComment] VARCHAR (50)    NULL,
    [Active]          BIT             NULL,
    [Deleted]         BIT             NULL,
    [CreatedBy]       VARCHAR (50)    NULL,
    [CreatedOn]       DATETIME        NULL,
    [UpdatedBy]       VARCHAR (50)    NULL,
    [UpdatedOn]       DATETIME        NULL,
    CONSTRAINT [PK_deposit_changeofrates] PRIMARY KEY CLUSTERED ([ChangeOfRateId] ASC)
);

