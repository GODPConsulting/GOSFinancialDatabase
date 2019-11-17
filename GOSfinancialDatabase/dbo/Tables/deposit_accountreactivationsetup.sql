CREATE TABLE [dbo].[deposit_accountreactivationsetup] (
    [ReactivationSetupId] INT          IDENTITY (1, 1) NOT NULL,
    [Structure]           INT          NULL,
    [Product]             INT          NULL,
    [ChargesApplicable]   BIT          NULL,
    [Charge]              VARCHAR (50) NULL,
    [Percentage]          VARCHAR (50) NULL,
    [PresetChart]         BIT          NULL,
    [Active]              BIT          NULL,
    [Deleted]             BIT          NULL,
    [CreatedBy]           VARCHAR (50) NULL,
    [CreatedOn]           DATETIME     NULL,
    [UpdatedBy]           VARCHAR (50) NULL,
    [UpdatedOn]           DATETIME     NULL,
    CONSTRAINT [PK_deposit_reactivationaccountsetup] PRIMARY KEY CLUSTERED ([ReactivationSetupId] ASC)
);

