CREATE TABLE [dbo].[purch_requisitionnote] (
    [PurchaseReqNoteId]    INT            IDENTITY (1, 1) NOT NULL,
    [RequesterName]        VARCHAR (255)  NOT NULL,
    [DepartmentId]         INT            NOT NULL,
    [DocumentNumber]       VARCHAR (50)   NULL,
    [Purpose]              VARCHAR (1000) NOT NULL,
    [IsBudgeted]           BIT            NULL,
    [IsFundAvailable]      BIT            NULL,
    [DeliveryLocation]     VARCHAR (1000) NULL,
    [SuggestedSupplierId]  INT            NULL,
    [Total]                DECIMAL (18)   NULL,
    [ExpectedDeliveryDate] DATE           NULL,
    [ApprovalStatusId]     INT            NOT NULL,
    [CompanyId]            INT            NOT NULL,
    [Active]               BIT            NULL,
    [Deleted]              BIT            NULL,
    [CreatedBy]            VARCHAR (50)   NULL,
    [CreatedOn]            DATETIME       NULL,
    [UpdatedBy]            VARCHAR (50)   NULL,
    [UpdatedOn]            DATETIME       NULL,
    CONSTRAINT [PK_purch_requisitionnote] PRIMARY KEY CLUSTERED ([PurchaseReqNoteId] ASC),
    CONSTRAINT [FK_purch_requisitionnote_cor_supplier] FOREIGN KEY ([SuggestedSupplierId]) REFERENCES [dbo].[cor_supplier] ([SupplierId])
);

