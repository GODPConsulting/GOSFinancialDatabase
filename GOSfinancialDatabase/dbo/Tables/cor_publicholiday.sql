CREATE TABLE [dbo].[cor_publicholiday] (
    [PublicHolidayId] INT          IDENTITY (1, 1) NOT NULL,
    [CountryId]       INT          NOT NULL,
    [Date]            DATE         NOT NULL,
    [Description]     VARCHAR (50) NOT NULL,
    [Active]          BIT          NULL,
    [Deleted]         BIT          NULL,
    [CreatedBy]       VARCHAR (50) NULL,
    [CreatedOn]       DATETIME     NULL,
    [UpdatedBy]       VARCHAR (50) NULL,
    [UpdatedOn]       DATETIME     NULL,
    CONSTRAINT [PK_cor_publicholiday] PRIMARY KEY CLUSTERED ([PublicHolidayId] ASC),
    CONSTRAINT [FK_cor_publicholiday_cor_country] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[cor_country] ([CountryId]),
    CONSTRAINT [IX_tbl_publicholiday_Country_Date] UNIQUE NONCLUSTERED ([CountryId] ASC, [Date] ASC)
);

