CREATE TABLE [dbo].[cor_useraccountsettings] (
    [UserAccountSettingsId]          INT          IDENTITY (1, 1) NOT NULL,
    [EnablePasswordReset]            BIT          CONSTRAINT [DF_cor_useraccountsettings_EnablePasswordReset] DEFAULT ((0)) NOT NULL,
    [MinimumRequiredPasswordLength]  INT          NULL,
    [MaximumInvalidPasswordAttempts] INT          NULL,
    [AllowPasswordUserAfter]         INT          NULL,
    [ExpirePasswordAfter]            INT          NULL,
    [MaxPeriodOfUserInactivity]      INT          NULL,
    [SessionTimeout]                 INT          NULL,
    [Active]                         BIT          NULL,
    [Deleted]                        BIT          NULL,
    [CreatedBy]                      VARCHAR (50) NULL,
    [CreatedOn]                      DATETIME     NULL,
    [UpdatedBy]                      VARCHAR (50) NULL,
    [UpdatedOn]                      DATETIME     NULL,
    CONSTRAINT [PK_cor_useraccountsettings] PRIMARY KEY CLUSTERED ([UserAccountSettingsId] ASC)
);

