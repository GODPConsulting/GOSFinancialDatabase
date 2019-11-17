CREATE TABLE [dbo].[cor_audittrailtype] (
    [AuditTrailTypeId]   INT           IDENTITY (1, 1) NOT NULL,
    [AuditTrailTypeName] VARCHAR (250) NOT NULL,
    [Active]             BIT           NULL,
    [Deleted]            BIT           NULL,
    [CreatedBy]          VARCHAR (50)  NULL,
    [CreatedOn]          DATETIME      NULL,
    [UpdatedBy]          VARCHAR (50)  NULL,
    [UpdatedOn]          DATETIME      NULL,
    CONSTRAINT [PK_cor_audittrailtype] PRIMARY KEY CLUSTERED ([AuditTrailTypeId] ASC)
);

