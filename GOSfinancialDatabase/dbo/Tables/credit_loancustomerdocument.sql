CREATE TABLE [dbo].[credit_loancustomerdocument] (
    [CustomerDocumentId] INT           IDENTITY (1, 1) NOT NULL,
    [DocumentTypeId]     INT           NOT NULL,
    [CustomerId]         INT           NOT NULL,
    [PhysicalLocation]   VARCHAR (500) NULL,
    [DocumentName]       VARCHAR (255) NOT NULL,
    [DocumentExtension]  VARCHAR (50)  NOT NULL,
    [DocumentFile]       IMAGE         NOT NULL,
    [Active]             BIT           NULL,
    [Deleted]            BIT           NULL,
    [CreatedBy]          VARCHAR (50)  NULL,
    [CreatedOn]          DATETIME      NULL,
    [UpdatedBy]          VARCHAR (50)  NULL,
    [UpdatedOn]          DATETIME      NULL,
    CONSTRAINT [PK_credit_loancustomerdocument] PRIMARY KEY CLUSTERED ([CustomerDocumentId] ASC),
    CONSTRAINT [FK_credit_loancustomerdocument_credit_documenttype] FOREIGN KEY ([DocumentTypeId]) REFERENCES [dbo].[credit_documenttype] ([DocumentTypeId]),
    CONSTRAINT [FK_credit_loancustomerdocument_credit_loancustomer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[credit_loancustomer] ([CustomerId])
);

