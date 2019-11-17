CREATE TABLE [dbo].[fin_glmapping] (
    [GlMappingId] INT           IDENTITY (1, 1) NOT NULL,
    [GLId]        INT           NOT NULL,
    [Caption]     VARCHAR (250) NOT NULL,
    [SubCaption]  VARCHAR (250) NOT NULL,
    [CompanyId]   INT           NULL,
    [SubPosition] INT           NULL,
    [GLCode]      VARCHAR (250) NOT NULL,
    [Active]      BIT           NULL,
    [Deleted]     BIT           NULL,
    [CreatedBy]   VARCHAR (50)  NULL,
    [CreatedOn]   DATETIME      NULL,
    [UpdatedBy]   VARCHAR (50)  NULL,
    [UpdatedOn]   DATETIME      NULL,
    CONSTRAINT [PK_fin_glmapping] PRIMARY KEY CLUSTERED ([GlMappingId] ASC),
    CONSTRAINT [FK_fin_glmapping_fin_generalledger] FOREIGN KEY ([GLId]) REFERENCES [dbo].[fin_generalledger] ([GLId])
);

