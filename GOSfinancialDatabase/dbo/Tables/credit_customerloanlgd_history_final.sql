CREATE TABLE [dbo].[credit_customerloanlgd_history_final] (
    [Id]                  INT              IDENTITY (1, 1) NOT NULL,
    [CustomerName]        VARCHAR (250)    NULL,
    [LoanReferenceNumber] VARCHAR (250)    NULL,
    [ProductCode]         VARCHAR (250)    NULL,
    [ProductName]         VARCHAR (250)    NULL,
    [LGD]                 DECIMAL (36, 20) NULL,
    [Date]                DATE             NULL,
    [Year]                INT              NULL,
    [Variable1]           DECIMAL (18, 2)  NULL,
    [Variable2]           DECIMAL (18, 2)  NULL,
    [Variable3]           DECIMAL (18, 2)  NULL,
    [Variable4]           DECIMAL (18, 2)  NULL,
    [Variable5]           DECIMAL (18, 2)  NULL,
    [Variable6]           DECIMAL (18, 2)  NULL,
    [Variable7]           DECIMAL (18, 2)  NULL,
    CONSTRAINT [PK_credit.CustomerLoanlgd_history_final] PRIMARY KEY CLUSTERED ([Id] ASC)
);

