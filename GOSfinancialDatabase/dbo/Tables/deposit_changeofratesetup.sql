CREATE TABLE [dbo].[deposit_changeofratesetup] (
    [ChangeOfRateSetupId] INT          IDENTITY (1, 1) NOT NULL,
    [Structure]           INT          NULL,
    [Product]             VARCHAR (50) NULL,
    [CanApply]            BIT          NULL,
    [Active]              BIT          NULL,
    [Deleted]             BIT          NULL,
    [CreatedBy]           VARCHAR (50) NULL,
    [CreatedOn]           DATETIME     NULL,
    [UpdatedBy]           VARCHAR (50) NULL,
    [UpdatedOn]           DATETIME     NULL,
    CONSTRAINT [PK_deposit_changeofratesetup] PRIMARY KEY CLUSTERED ([ChangeOfRateSetupId] ASC)
);

