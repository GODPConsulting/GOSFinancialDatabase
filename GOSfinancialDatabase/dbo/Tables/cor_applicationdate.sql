CREATE TABLE [dbo].[cor_applicationdate] (
    [ApplicationDateId] INT          IDENTITY (1, 1) NOT NULL,
    [CurrentDate]       DATETIME     NOT NULL,
    [CompanyId]         INT          NOT NULL,
    [Active]            BIT          NULL,
    [Deleted]           BIT          NULL,
    [CreatedBy]         VARCHAR (50) NULL,
    [CreatedOn]         DATETIME     NULL,
    [UpdatedBy]         VARCHAR (50) NULL,
    [UpdatedOn]         DATETIME     NULL,
    CONSTRAINT [PK_cor_applicationdate] PRIMARY KEY CLUSTERED ([ApplicationDateId] ASC),
    CONSTRAINT [FK_cor_applicationdate_cor_company] FOREIGN KEY ([CompanyId]) REFERENCES [dbo].[cor_company] ([CompanyId])
);

