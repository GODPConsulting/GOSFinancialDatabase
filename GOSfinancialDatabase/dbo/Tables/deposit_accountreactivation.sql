CREATE TABLE [dbo].[deposit_accountreactivation] (
    [ReactivationId]  INT             IDENTITY (1, 1) NOT NULL,
    [Structure]       INT             NULL,
    [Substructure]    INT             NULL,
    [AccountName]     VARCHAR (50)    NULL,
    [AccountNumber]   VARCHAR (50)    NULL,
    [AccountBalance]  DECIMAL (18, 2) NULL,
    [Currency]        INT             NULL,
    [Balance]         DECIMAL (18, 2) NULL,
    [Reason]          VARCHAR (50)    NULL,
    [Charges]         VARCHAR (50)    NULL,
    [ApproverName]    VARCHAR (50)    NULL,
    [ApproverComment] VARCHAR (50)    NULL,
    [Active]          BIT             NULL,
    [Deleted]         BIT             NULL,
    [CreatedBy]       VARCHAR (50)    NULL,
    [CreatedOn]       DATETIME        NULL,
    [UpdatedBy]       VARCHAR (50)    NULL,
    [UpdatedOn]       DATETIME        NULL,
    CONSTRAINT [PK_deposit_accountreactivation] PRIMARY KEY CLUSTERED ([ReactivationId] ASC)
);

