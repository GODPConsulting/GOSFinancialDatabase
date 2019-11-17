CREATE TABLE [dbo].[credit_customeridentitydetails] (
    [CustomerIdentityDetailsId] INT           IDENTITY (1, 1) NOT NULL,
    [CustomerId]                INT           NOT NULL,
    [IdentificationId]          INT           NOT NULL,
    [Number]                    VARCHAR (250) NOT NULL,
    [Issuer]                    VARCHAR (50)  NOT NULL,
    [Active]                    BIT           NULL,
    [Deleted]                   BIT           NULL,
    [CreatedBy]                 VARCHAR (50)  NULL,
    [CreatedOn]                 DATETIME      NULL,
    [UpdatedBy]                 VARCHAR (50)  NULL,
    [UpdatedOn]                 DATETIME      NULL,
    CONSTRAINT [PK_credit_customeridentitydetails] PRIMARY KEY CLUSTERED ([CustomerIdentityDetailsId] ASC),
    CONSTRAINT [FK_credit_customeridentitydetails_cor_identification] FOREIGN KEY ([IdentificationId]) REFERENCES [dbo].[cor_identification] ([IdentificationId]),
    CONSTRAINT [FK_credit_customeridentitydetails_credit_loancustomer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[credit_loancustomer] ([CustomerId])
);

