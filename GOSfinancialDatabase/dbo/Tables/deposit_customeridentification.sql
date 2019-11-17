CREATE TABLE [dbo].[deposit_customeridentification] (
    [CustomerIdentityId] INT          IDENTITY (1, 1) NOT NULL,
    [CustomerId]         INT          NOT NULL,
    [MeansOfID]          INT          NOT NULL,
    [IDNumber]           VARCHAR (50) NULL,
    [DateIssued]         DATE         NULL,
    [ExpiryDate]         DATE         NULL,
    [Active]             BIT          NULL,
    [Deleted]            BIT          NULL,
    [CreatedBy]          VARCHAR (50) NULL,
    [CreatedOn]          DATETIME     NULL,
    [UpdatedBy]          VARCHAR (50) NULL,
    [UpdatedOn]          DATETIME     NULL,
    CONSTRAINT [PK_deposit_customeridentification] PRIMARY KEY CLUSTERED ([CustomerIdentityId] ASC),
    CONSTRAINT [FK_deposit_customeridentification_deposit_accountopening] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[deposit_accountopening] ([CustomerId])
);

