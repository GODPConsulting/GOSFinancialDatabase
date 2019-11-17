CREATE TABLE [dbo].[deposit_withdrawalsetup] (
    [WithdrawalSetupId]    INT             IDENTITY (1, 1) NOT NULL,
    [Structure]            INT             NULL,
    [Product]              INT             NULL,
    [PresetChart]          BIT             NULL,
    [AccountType]          INT             NULL,
    [DailyWithdrawalLimit] DECIMAL (18, 2) NULL,
    [WithdrawalCharges]    BIT             NULL,
    [Charge]               VARCHAR (50)    NULL,
    [Percentage]           VARCHAR (50)    NULL,
    [Active]               BIT             NULL,
    [Deleted]              BIT             NULL,
    [CreatedBy]            VARCHAR (50)    NULL,
    [CreatedOn]            DATETIME        NULL,
    [UpdatedBy]            VARCHAR (50)    NULL,
    [UpdatedOn]            DATETIME        NULL,
    CONSTRAINT [PK_deposit_withdrawalsetup] PRIMARY KEY CLUSTERED ([WithdrawalSetupId] ASC)
);

