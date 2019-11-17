CREATE TABLE [dbo].[fin_subgeneralledger] (
    [SubGLId]       INT           IDENTITY (1, 1) NOT NULL,
    [SubGLCode]     VARCHAR (50)  NOT NULL,
    [SubGLName]     VARCHAR (250) NOT NULL,
    [GLId]          INT           NOT NULL,
    [CompanyId]     INT           NULL,
    [NoteLine]      VARCHAR (150) NULL,
    [FSLineCaption] VARCHAR (150) NULL,
    [GLClassId]     INT           NOT NULL,
    [Active]        BIT           NULL,
    [Deleted]       BIT           NULL,
    [CreatedBy]     VARCHAR (50)  NULL,
    [CreatedOn]     DATETIME      NULL,
    [UpdatedBy]     VARCHAR (50)  NULL,
    [UpdatedOn]     DATETIME      NULL,
    CONSTRAINT [PK_fin_subgeneralledger] PRIMARY KEY CLUSTERED ([SubGLId] ASC),
    CONSTRAINT [FK_fin_subgeneralledger_fin_generalledger] FOREIGN KEY ([GLId]) REFERENCES [dbo].[fin_generalledger] ([GLId])
);

