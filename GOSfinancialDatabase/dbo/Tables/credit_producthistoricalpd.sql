CREATE TABLE [dbo].[credit_producthistoricalpd] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [ProductCode] VARCHAR (50)  NULL,
    [ProductName] VARCHAR (250) NULL,
    [PD]          FLOAT (53)    NULL,
    [Date]        DATE          NULL,
    CONSTRAINT [PK_credit_producthistoricalpd] PRIMARY KEY CLUSTERED ([Id] ASC)
);

