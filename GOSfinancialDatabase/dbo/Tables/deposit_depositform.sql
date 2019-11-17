CREATE TABLE [dbo].[deposit_depositform] (
    [DepositFormId]          INT             IDENTITY (1, 1) NOT NULL,
    [Structure]              INT             NOT NULL,
    [Operation]              INT             NULL,
    [TransactionId]          INT             NULL,
    [AccountNumber]          VARCHAR (50)    NOT NULL,
    [Amount]                 DECIMAL (18, 2) NOT NULL,
    [ValueDate]              DATE            NULL,
    [TransactionDate]        DATETIME        NOT NULL,
    [TransactionDescription] VARCHAR (50)    NULL,
    [TransactionParticulars] VARCHAR (50)    NULL,
    [Remark]                 VARCHAR (50)    NULL,
    [ModeOfTransaction]      VARCHAR (50)    NULL,
    [InstrumentNumber]       VARCHAR (50)    NULL,
    [InstrumentDate]         DATE            NULL,
    [Active]                 BIT             NULL,
    [Deleted]                BIT             NULL,
    [CreatedBy]              VARCHAR (50)    NULL,
    [CreatedOn]              DATETIME        NULL,
    [UpdatedBy]              VARCHAR (50)    NULL,
    [UpdatedOn]              DATETIME        NULL,
    CONSTRAINT [PK_deposit_depositform] PRIMARY KEY CLUSTERED ([DepositFormId] ASC)
);

