CREATE TABLE [dbo].[fin_generalledger] (
    [GLId]      INT           IDENTITY (1, 1) NOT NULL,
    [GLCode]    VARCHAR (50)  NOT NULL,
    [GLName]    VARCHAR (250) NOT NULL,
    [CompanyId] INT           NULL,
    [GLClassId] INT           NULL,
    [Active]    BIT           NULL,
    [Deleted]   BIT           NULL,
    [CreatedBy] VARCHAR (50)  NULL,
    [CreatedOn] DATETIME      NULL,
    [UpdatedBy] VARCHAR (50)  NULL,
    [UpdatedOn] DATETIME      NULL,
    CONSTRAINT [PK_fin_generalledger] PRIMARY KEY CLUSTERED ([GLId] ASC)
);

