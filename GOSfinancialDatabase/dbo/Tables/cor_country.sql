CREATE TABLE [dbo].[cor_country] (
    [CountryId]   INT           IDENTITY (1, 1) NOT NULL,
    [CountryCode] VARCHAR (10)  NOT NULL,
    [CountryName] VARCHAR (250) NOT NULL,
    [Active]      BIT           NULL,
    [Deleted]     BIT           NULL,
    [CreatedBy]   VARCHAR (50)  NULL,
    [CreatedOn]   DATETIME      NULL,
    [UpdatedBy]   VARCHAR (50)  NULL,
    [UpdatedOn]   DATETIME      NULL,
    CONSTRAINT [PK_cor_country] PRIMARY KEY CLUSTERED ([CountryId] ASC)
);

