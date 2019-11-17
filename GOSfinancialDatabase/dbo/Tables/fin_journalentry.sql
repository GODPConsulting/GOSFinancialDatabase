CREATE TABLE [dbo].[fin_journalentry] (
    [JournalEntryId]       INT             IDENTITY (1, 1) NOT NULL,
    [CompanyId]            INT             NOT NULL,
    [TransactionReference] VARCHAR (50)    NULL,
    [JournalDate]          DATE            NULL,
    [TransactionType]      INT             NULL,
    [JournalType]          VARCHAR (50)    NULL,
    [GLId]                 INT             NULL,
    [GlName]               VARCHAR (50)    NULL,
    [DebitAmount]          DECIMAL (18, 2) NULL,
    [CreditAmount]         DECIMAL (18, 2) NULL,
    [Amount]               DECIMAL (18, 2) NULL,
    [Narration]            VARCHAR (500)   NULL,
    [Active]               BIT             NULL,
    [Deleted]              BIT             NULL,
    [CreatedBy]            VARCHAR (50)    NULL,
    [CreatedOn]            DATETIME        NULL,
    [UpdatedBy]            VARCHAR (50)    NULL,
    [UpdatedOn]            DATETIME        NULL,
    CONSTRAINT [PK_fin_journalentry] PRIMARY KEY CLUSTERED ([JournalEntryId] ASC)
);

