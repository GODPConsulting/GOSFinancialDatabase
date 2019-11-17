CREATE TABLE [dbo].[purch_plpodetails] (
    [PLPODetailsId] INT           IDENTITY (1, 1) NOT NULL,
    [SNo]           INT           NOT NULL,
    [Description]   VARCHAR (250) NOT NULL,
    [NoOfItems]     INT           NOT NULL,
    [UnitPrice]     MONEY         NOT NULL,
    [SubTotal]      MONEY         NOT NULL,
    [PLPOId]        INT           NOT NULL,
    [Active]        BIT           NULL,
    [Deleted]       BIT           NULL,
    [CreatedBy]     VARCHAR (50)  NULL,
    [CreatedOn]     DATETIME      NULL,
    [UpdatedBy]     VARCHAR (50)  NULL,
    [UpdatedOn]     DATETIME      NULL,
    CONSTRAINT [PK_cor_plpodetails] PRIMARY KEY CLUSTERED ([PLPODetailsId] ASC),
    CONSTRAINT [FK_cor_plpodetails_cor_plpo] FOREIGN KEY ([PLPOId]) REFERENCES [dbo].[purch_plpo] ([PLPOId])
);

