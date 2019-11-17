CREATE TABLE [dbo].[cor_customer] (
    [CustomerId]       INT           IDENTITY (1, 1) NOT NULL,
    [CustomerTypeId]   INT           NOT NULL,
    [Name]             VARCHAR (250) NOT NULL,
    [Passport]         VARCHAR (50)  NULL,
    [Address]          VARCHAR (550) NOT NULL,
    [Email]            VARCHAR (50)  NOT NULL,
    [PhoneNo]          VARCHAR (50)  NOT NULL,
    [RegistrationNo]   VARCHAR (50)  NULL,
    [CountryId]        INT           NOT NULL,
    [SalesLimit]       MONEY         NULL,
    [ApprovalStatusId] INT           NOT NULL,
    [Active]           BIT           NULL,
    [Deleted]          BIT           NULL,
    [CreatedBy]        VARCHAR (50)  NULL,
    [CreatedOn]        DATETIME      NULL,
    [UpdatedBy]        VARCHAR (50)  NULL,
    [UpdatedOn]        DATETIME      NULL,
    CONSTRAINT [PK_cor_customer] PRIMARY KEY CLUSTERED ([CustomerId] ASC),
    CONSTRAINT [FK_cor_customer_cor_approvalstatus] FOREIGN KEY ([ApprovalStatusId]) REFERENCES [dbo].[cor_approvalstatus] ([ApprovalStatusId]),
    CONSTRAINT [FK_cor_customer_cor_customertype] FOREIGN KEY ([CustomerTypeId]) REFERENCES [dbo].[cor_customertype] ([CustomerTypeId])
);

