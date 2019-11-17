CREATE TABLE [dbo].[cor_customerauthorization] (
    [CustomerAuthorizationId] INT           IDENTITY (1, 1) NOT NULL,
    [CustomerId]              INT           NOT NULL,
    [Name]                    VARCHAR (250) NOT NULL,
    [Address]                 VARCHAR (550) NOT NULL,
    [Email]                   VARCHAR (50)  NOT NULL,
    [PhoneNo]                 VARCHAR (50)  NOT NULL,
    [Signature]               IMAGE         NULL,
    [Active]                  BIT           NULL,
    [Deleted]                 BIT           NULL,
    [CreatedBy]               VARCHAR (50)  NULL,
    [CreatedOn]               DATETIME      NULL,
    [UpdatedBy]               VARCHAR (50)  NULL,
    [UpdatedOn]               DATETIME      NULL,
    CONSTRAINT [PK_cor_customerauthorization] PRIMARY KEY CLUSTERED ([CustomerAuthorizationId] ASC),
    CONSTRAINT [FK_cor_customerauthorization_cor_customer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[cor_customer] ([CustomerId])
);

