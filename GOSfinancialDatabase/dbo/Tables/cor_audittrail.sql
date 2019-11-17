CREATE TABLE [dbo].[cor_audittrail] (
    [AuditTrailId]     INT           IDENTITY (1, 1) NOT NULL,
    [AuditTrailTypeId] INT           NOT NULL,
    [StaffId]          INT           NOT NULL,
    [SystemDate]       DATE          NOT NULL,
    [Details]          VARCHAR (MAX) NOT NULL,
    [IPAddress]        VARCHAR (50)  NULL,
    [URL]              VARCHAR (250) NULL,
    [Active]           BIT           NULL,
    [Deleted]          BIT           NULL,
    [CreatedBy]        VARCHAR (50)  NULL,
    [CreatedOn]        DATETIME      NULL,
    [UpdatedBy]        VARCHAR (50)  NULL,
    [UpdatedOn]        DATETIME      NULL,
    CONSTRAINT [PK_cor_audittrail] PRIMARY KEY CLUSTERED ([AuditTrailId] ASC),
    CONSTRAINT [FK_cor_audittrail_cor_audittrailtype] FOREIGN KEY ([AuditTrailTypeId]) REFERENCES [dbo].[cor_audittrailtype] ([AuditTrailTypeId]),
    CONSTRAINT [FK_cor_audittrail_cor_staff] FOREIGN KEY ([StaffId]) REFERENCES [dbo].[cor_staff] ([StaffId])
);

