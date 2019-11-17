CREATE TABLE [dbo].[cor_maritalstatus] (
    [MaritalStatusId] INT          IDENTITY (1, 1) NOT NULL,
    [Status]          VARCHAR (50) NOT NULL,
    [Active]          BIT          NULL,
    [Deleted]         BIT          NULL,
    [CreatedBy]       VARCHAR (50) NULL,
    [CreatedOn]       DATETIME     NULL,
    [UpdatedBy]       VARCHAR (50) NULL,
    [UpdatedOn]       DATETIME     NULL,
    CONSTRAINT [PK_cor_maritalstatus] PRIMARY KEY CLUSTERED ([MaritalStatusId] ASC)
);

