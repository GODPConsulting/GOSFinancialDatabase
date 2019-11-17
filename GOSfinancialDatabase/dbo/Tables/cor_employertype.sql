CREATE TABLE [dbo].[cor_employertype] (
    [EmployerTypeId] INT          IDENTITY (1, 1) NOT NULL,
    [Type]           VARCHAR (50) NOT NULL,
    [Active]         BIT          NULL,
    [Deleted]        BIT          NULL,
    [CreatedBy]      VARCHAR (50) NULL,
    [CreatedOn]      DATETIME     NULL,
    [UpdatedBy]      VARCHAR (50) NULL,
    [UpdatedOn]      DATETIME     NULL,
    CONSTRAINT [PK_cor_employertype] PRIMARY KEY CLUSTERED ([EmployerTypeId] ASC)
);

