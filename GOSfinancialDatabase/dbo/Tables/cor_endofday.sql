CREATE TABLE [dbo].[cor_endofday] (
    [EndOfDayId]    INT          IDENTITY (1, 1) NOT NULL,
    [CompanyId]     INT          NULL,
    [Date]          DATE         NOT NULL,
    [StartDateTime] DATETIME     NOT NULL,
    [EndDateTime]   DATETIME     NOT NULL,
    [Active]        BIT          NULL,
    [Deleted]       BIT          NULL,
    [CreatedBy]     VARCHAR (50) NULL,
    [CreatedOn]     DATETIME     NULL,
    [UpdatedBy]     VARCHAR (50) NULL,
    [UpdatedOn]     DATETIME     NULL,
    CONSTRAINT [PK_cor_endofday] PRIMARY KEY CLUSTERED ([EndOfDayId] ASC),
    CONSTRAINT [IX_tbl_endofday_Company_Date] UNIQUE NONCLUSTERED ([CompanyId] ASC, [Date] ASC)
);

