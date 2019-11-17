CREATE TABLE [dbo].[credit_creditriskcategory] (
    [CreditRiskCategoryId]   INT            IDENTITY (1, 1) NOT NULL,
    [CreditRiskCategoryName] VARCHAR (255)  NOT NULL,
    [Description]            VARCHAR (1000) NULL,
    [UseInOrigination]       BIT            CONSTRAINT [DF_credit_creditriskcategory_UseInOrigination] DEFAULT ((0)) NOT NULL,
    [Active]                 BIT            NULL,
    [Deleted]                BIT            NULL,
    [CreatedBy]              VARCHAR (50)   NULL,
    [CreatedOn]              DATETIME       NULL,
    [UpdatedBy]              VARCHAR (50)   NULL,
    [UpdatedOn]              DATETIME       NULL,
    CONSTRAINT [PK_credit_creditriskcategory] PRIMARY KEY CLUSTERED ([CreditRiskCategoryId] ASC)
);

