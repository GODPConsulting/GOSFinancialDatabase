CREATE TABLE [dbo].[deposit_transfersetup] (
    [TransferSetupId]      INT          IDENTITY (1, 1) NOT NULL,
    [Structure]            INT          NULL,
    [Product]              INT          NULL,
    [PresetChart]          BIT          NULL,
    [AccountType]          INT          NULL,
    [DailyWithdrawalLimit] VARCHAR (50) NULL,
    [ChargesApplicable]    BIT          NULL,
    [Charges]              VARCHAR (50) NULL,
    [Percentages]          VARCHAR (50) NULL,
    [Active]               BIT          NULL,
    [Deleted]              BIT          NULL,
    [CreatedBy]            VARCHAR (50) NULL,
    [CreatedOn]            DATETIME     NULL,
    [UpdatedBy]            VARCHAR (50) NULL,
    [UpdatedOn]            DATETIME     NULL,
    CONSTRAINT [PK_deposit_transfersetup] PRIMARY KEY CLUSTERED ([TransferSetupId] ASC)
);

