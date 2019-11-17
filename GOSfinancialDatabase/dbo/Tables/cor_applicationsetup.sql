CREATE TABLE [dbo].[cor_applicationsetup] (
    [ApplicationSetupId]    INT           IDENTITY (1, 1) NOT NULL,
    [ReportPath]            VARCHAR (550) NULL,
    [UseActiveDirectory]    BIT           CONSTRAINT [DF_cor_applicationsetup_UseActiveDirectory] DEFAULT ((0)) NOT NULL,
    [ActiveDirectoryDomain] VARCHAR (550) NULL,
    [Active]                BIT           NULL,
    [Deleted]               BIT           NULL,
    [CreatedBy]             VARCHAR (50)  NULL,
    [CreatedOn]             DATETIME      NULL,
    [UpdatedBy]             VARCHAR (50)  NULL,
    [UpdatedOn]             DATETIME      NULL,
    CONSTRAINT [PK_cor_applicationsetup] PRIMARY KEY CLUSTERED ([ApplicationSetupId] ASC)
);

