CREATE TABLE [dbo].[cor_customertype] (
    [CustomerTypeId] INT           IDENTITY (1, 1) NOT NULL,
    [CustomerName]   VARCHAR (250) NOT NULL,
    [Active]         BIT           NULL,
    [Deleted]        BIT           NULL,
    [CreatedBy]      VARCHAR (50)  NULL,
    [CreatedOn]      DATETIME      NULL,
    [UpdatedBy]      VARCHAR (50)  NULL,
    [UpdatedOn]      DATETIME      NULL,
    CONSTRAINT [PK_cor_customertype] PRIMARY KEY CLUSTERED ([CustomerTypeId] ASC)
);

