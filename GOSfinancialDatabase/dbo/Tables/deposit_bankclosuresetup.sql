CREATE TABLE [dbo].[deposit_bankclosuresetup] (
    [BankClosureSetupId]      INT          IDENTITY (1, 1) NOT NULL,
    [Structure]               INT          NULL,
    [Product]                 VARCHAR (50) NULL,
    [ClosureChargeApplicable] BIT          NULL,
    [Charge]                  VARCHAR (50) NULL,
    [Percentage]              VARCHAR (50) NULL,
    [SettlementBalance]       BIT          NULL,
    [PresetChart]             BIT          NULL,
    [Active]                  BIT          NULL,
    [Deleted]                 BIT          NULL,
    [CreatedBy]               VARCHAR (50) NULL,
    [CreatedOn]               DATETIME     NULL,
    [UpdatedBy]               VARCHAR (50) NULL,
    [UpdatedOn]               DATETIME     NULL,
    CONSTRAINT [PK_deposit_bankclosuresetup] PRIMARY KEY CLUSTERED ([BankClosureSetupId] ASC)
);

