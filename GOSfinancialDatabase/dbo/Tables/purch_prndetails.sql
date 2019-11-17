CREATE TABLE [dbo].[purch_prndetails] (
    [PRNDetailsId]      INT           IDENTITY (1, 1) NOT NULL,
    [SNo]               INT           NOT NULL,
    [Description]       VARCHAR (250) NOT NULL,
    [NoOfItems]         INT           NOT NULL,
    [UnitPrice]         MONEY         NOT NULL,
    [SubTotal]          MONEY         NOT NULL,
    [PurchaseReqNoteId] INT           NOT NULL,
    [Active]            BIT           NULL,
    [Deleted]           BIT           NULL,
    [CreatedBy]         VARCHAR (50)  NULL,
    [CreatedOn]         DATETIME      NULL,
    [UpdatedBy]         VARCHAR (50)  NULL,
    [UpdatedOn]         DATETIME      NULL,
    CONSTRAINT [PK_purch_prndetails] PRIMARY KEY CLUSTERED ([PRNDetailsId] ASC),
    CONSTRAINT [FK_purch_prndetails_purch_requisitionnote] FOREIGN KEY ([PurchaseReqNoteId]) REFERENCES [dbo].[purch_requisitionnote] ([PurchaseReqNoteId])
);

