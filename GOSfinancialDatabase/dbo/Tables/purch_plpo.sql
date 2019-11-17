CREATE TABLE [dbo].[purch_plpo] (
    [PLPOId]           INT            IDENTITY (1, 1) NOT NULL,
    [Name]             VARCHAR (250)  NOT NULL,
    [Address]          VARCHAR (550)  NOT NULL,
    [SupplierId]       INT            NOT NULL,
    [PaymentTerms]     VARCHAR (550)  NOT NULL,
    [Tax]              MONEY          NOT NULL,
    [Total]            MONEY          NOT NULL,
    [DeliveryDate]     DATE           NOT NULL,
    [LPONumber]        VARCHAR (50)   NOT NULL,
    [Description]      VARCHAR (2000) NULL,
    [ApprovalStatusId] INT            NOT NULL,
    [Active]           BIT            NULL,
    [Deleted]          BIT            NULL,
    [CreatedBy]        VARCHAR (50)   NULL,
    [CreatedOn]        DATETIME       NULL,
    [UpdatedBy]        VARCHAR (50)   NULL,
    [UpdatedOn]        DATETIME       NULL,
    CONSTRAINT [PK_cor_plpo] PRIMARY KEY CLUSTERED ([PLPOId] ASC),
    CONSTRAINT [FK_purch_plpo_cor_approvalstatus] FOREIGN KEY ([ApprovalStatusId]) REFERENCES [dbo].[cor_approvalstatus] ([ApprovalStatusId]),
    CONSTRAINT [FK_purch_plpo_cor_supplier] FOREIGN KEY ([SupplierId]) REFERENCES [dbo].[cor_supplier] ([SupplierId])
);

