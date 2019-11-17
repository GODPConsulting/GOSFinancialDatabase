CREATE TABLE [dbo].[fin_accounttype] (
    [AccountTypeId]   INT           IDENTITY (1, 1) NOT NULL,
    [AccountTypeName] VARCHAR (250) NOT NULL,
    [Multiples]       VARCHAR (10)  NOT NULL,
    [Active]          BIT           NULL,
    [Deleted]         BIT           NULL,
    [CreatedBy]       VARCHAR (50)  NULL,
    [CreatedOn]       DATETIME      NULL,
    [UpdatedBy]       VARCHAR (50)  NULL,
    [UpdatedOn]       DATETIME      NULL,
    CONSTRAINT [PK_fin_accounttype] PRIMARY KEY CLUSTERED ([AccountTypeId] ASC)
);

