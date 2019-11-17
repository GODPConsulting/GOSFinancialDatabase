CREATE TABLE [dbo].[credit_loancustomerratiodetail] (
    [RatioDetailId] INT           IDENTITY (1, 1) NOT NULL,
    [RatioName]     NCHAR (50)    NULL,
    [Description]   VARCHAR (256) COLLATE Latin1_General_CI_AS NULL,
    [Active]        BIT           NULL,
    [Deleted]       BIT           NULL,
    [CreatedBy]     VARCHAR (50)  NULL,
    [CreatedOn]     DATETIME      NULL,
    [UpdatedBy]     VARCHAR (50)  NULL,
    [UpdatedOn]     DATETIME      NULL,
    CONSTRAINT [PK_credit_loancustomerratiodetail] PRIMARY KEY CLUSTERED ([RatioDetailId] ASC)
);

