CREATE TABLE [dbo].[credit_customernextofkin] (
    [CustomerNextOfKinId] INT           IDENTITY (1, 1) NOT NULL,
    [CustomerId]          INT           NOT NULL,
    [Name]                VARCHAR (250) NOT NULL,
    [Relationship]        VARCHAR (50)  NOT NULL,
    [Address]             VARCHAR (550) NOT NULL,
    [Email]               VARCHAR (50)  NOT NULL,
    [PhoneNo]             VARCHAR (50)  NOT NULL,
    [Active]              BIT           NULL,
    [Deleted]             BIT           NULL,
    [CreatedBy]           VARCHAR (50)  NULL,
    [CreatedOn]           DATETIME      NULL,
    [UpdatedBy]           VARCHAR (50)  NULL,
    [UpdatedOn]           DATETIME      NULL,
    CONSTRAINT [PK_credit_customernextofkin] PRIMARY KEY CLUSTERED ([CustomerNextOfKinId] ASC),
    CONSTRAINT [FK_credit_customernextofkin_credit_loancustomer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[credit_loancustomer] ([CustomerId])
);

