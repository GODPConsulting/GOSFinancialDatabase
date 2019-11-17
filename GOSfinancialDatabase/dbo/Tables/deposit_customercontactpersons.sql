CREATE TABLE [dbo].[deposit_customercontactpersons] (
    [ContactPersonId] INT          IDENTITY (1, 1) NOT NULL,
    [CustomerId]      INT          NOT NULL,
    [Title]           VARCHAR (50) NULL,
    [SurName]         VARCHAR (50) NULL,
    [FirstName]       VARCHAR (50) NULL,
    [OtherName]       VARCHAR (50) NULL,
    [Relationship]    VARCHAR (50) NULL,
    [GenderId]        INT          NULL,
    [MobileNumber]    VARCHAR (50) NULL,
    [Email]           VARCHAR (50) NULL,
    [Address]         VARCHAR (50) NULL,
    [Active]          BIT          NULL,
    [Deleted]         BIT          NULL,
    [CreatedBy]       VARCHAR (50) NULL,
    [CreatedOn]       DATETIME     NULL,
    [UpdatedBy]       VARCHAR (50) NULL,
    [UpdatedOn]       DATETIME     NULL,
    CONSTRAINT [PK_deposit_customercontactpersons] PRIMARY KEY CLUSTERED ([ContactPersonId] ASC),
    CONSTRAINT [FK_deposit_customercontactpersons_deposit_accountopening] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[deposit_accountopening] ([CustomerId])
);

