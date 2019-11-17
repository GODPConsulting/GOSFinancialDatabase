CREATE TABLE [dbo].[cor_customerdocument] (
    [CustomerDocumentId] INT           IDENTITY (1, 1) NOT NULL,
    [CustomerId]         INT           NOT NULL,
    [Name]               VARCHAR (250) NOT NULL,
    [Document]           IMAGE         NULL,
    [Active]             BIT           NULL,
    [Deleted]            BIT           NULL,
    [CreatedBy]          VARCHAR (50)  NULL,
    [CreatedOn]          DATETIME      NULL,
    [UpdatedBy]          VARCHAR (50)  NULL,
    [UpdatedOn]          DATETIME      NULL,
    CONSTRAINT [PK_cor_customerdocument] PRIMARY KEY CLUSTERED ([CustomerDocumentId] ASC),
    CONSTRAINT [FK_cor_customerdocument_cor_customer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[cor_customer] ([CustomerId])
);

