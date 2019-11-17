CREATE TABLE [dbo].[credit_directorshareholder] (
    [DirectorShareHolderId] INT           IDENTITY (1, 1) NOT NULL,
    [CustomerId]            INT           NOT NULL,
    [CompanyName]           VARCHAR (250) NOT NULL,
    [PercentageHolder]      FLOAT (53)    NOT NULL,
    [Active]                BIT           NULL,
    [Deleted]               BIT           NULL,
    [CreatedBy]             VARCHAR (50)  NULL,
    [CreatedOn]             DATETIME      NULL,
    [UpdatedBy]             VARCHAR (50)  NULL,
    [UpdatedOn]             DATETIME      NULL,
    CONSTRAINT [PK_credit_directorshareholder] PRIMARY KEY CLUSTERED ([DirectorShareHolderId] ASC),
    CONSTRAINT [FK_credit_directorshareholder_credit_loancustomer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[credit_loancustomer] ([CustomerId])
);

