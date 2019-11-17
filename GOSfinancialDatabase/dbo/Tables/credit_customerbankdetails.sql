CREATE TABLE [dbo].[credit_customerbankdetails] (
    [CustomerBankDetailsId] INT           IDENTITY (1, 1) NOT NULL,
    [CustomerId]            INT           NOT NULL,
    [BVN]                   VARCHAR (250) NOT NULL,
    [Account]               VARCHAR (50)  NOT NULL,
    [Bank]                  VARCHAR (550) NOT NULL,
    [Active]                BIT           NULL,
    [Deleted]               BIT           NULL,
    [CreatedBy]             VARCHAR (50)  NULL,
    [CreatedOn]             DATETIME      NULL,
    [UpdatedBy]             VARCHAR (50)  NULL,
    [UpdatedOn]             DATETIME      NULL,
    CONSTRAINT [PK_credit_customerbankdetails] PRIMARY KEY CLUSTERED ([CustomerBankDetailsId] ASC),
    CONSTRAINT [FK_credit_customerbankdetails_credit_loancustomer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[credit_loancustomer] ([CustomerId])
);

