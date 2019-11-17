CREATE TABLE [dbo].[deposit_customerkycdocumentupload] (
    [DocumentId]       INT             IDENTITY (1, 1) NOT NULL,
    [CustomerId]       INT             NOT NULL,
    [KycId]            INT             NULL,
    [DocumentName]     VARCHAR (50)    NULL,
    [DocumentUpload]   VARBINARY (MAX) NULL,
    [PhysicalLocation] VARCHAR (50)    NULL,
    [FileExtension]    VARCHAR (50)    NULL,
    [DocumentType]     INT             NULL,
    [Active]           BIT             NULL,
    [Deleted]          BIT             NULL,
    [CreatedBy]        VARCHAR (50)    NULL,
    [CreatedOn]        DATETIME        NULL,
    [UpdatedBy]        VARCHAR (50)    NULL,
    [UpdatedOn]        DATETIME        NULL,
    CONSTRAINT [PK_deposit_customerkycdocumentupload] PRIMARY KEY CLUSTERED ([DocumentId] ASC),
    CONSTRAINT [FK_deposit_customerkycdocumentupload_deposit_customerkyc] FOREIGN KEY ([KycId]) REFERENCES [dbo].[deposit_customerkyc] ([KycId])
);

