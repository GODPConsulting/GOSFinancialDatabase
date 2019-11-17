CREATE TABLE [dbo].[cor_state] (
    [StateId]   INT           IDENTITY (1, 1) NOT NULL,
    [StateCode] VARCHAR (10)  NOT NULL,
    [StateName] VARCHAR (250) NOT NULL,
    [CountryId] INT           NOT NULL,
    [Active]    BIT           NULL,
    [Deleted]   BIT           NULL,
    [CreatedBy] VARCHAR (50)  NULL,
    [CreatedOn] DATETIME      NULL,
    [UpdatedBy] VARCHAR (50)  NULL,
    [UpdatedOn] DATETIME      NULL,
    CONSTRAINT [PK_cor_state] PRIMARY KEY CLUSTERED ([StateId] ASC),
    CONSTRAINT [FK_cor_state_cor_country] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[cor_country] ([CountryId])
);

