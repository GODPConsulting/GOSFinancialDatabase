CREATE TABLE [dbo].[fin_journaloperationsetup] (
    [JournalOperationSetupId] INT NOT NULL,
    [CompanyId]               INT NOT NULL,
    [CanPass]                 BIT NULL,
    [UseWorkFlow]             BIT NULL,
    CONSTRAINT [PK_fin_journaloperationsetup] PRIMARY KEY CLUSTERED ([JournalOperationSetupId] ASC)
);

