﻿CREATE TABLE [dbo].[deposit_customerkyc] (
    [KycId]                    INT           IDENTITY (1, 1) NOT NULL,
    [CustomerId]               INT           NOT NULL,
    [Financiallydisadvantaged] BIT           NULL,
    [Bankpolicydocuments]      VARCHAR (500) NULL,
    [TieredKycrequirement]     BIT           NULL,
    [RiskCategoryId]           INT           NULL,
    [PoliticallyExposedPerson] BIT           NULL,
    [Details]                  VARCHAR (500) NULL,
    [AddressVisited]           VARCHAR (500) NULL,
    [CommentOnLocation]        VARCHAR (500) NULL,
    [LocationColor]            VARCHAR (50)  NULL,
    [LocationDescription]      VARCHAR (50)  NULL,
    [NameOfVisitingStaff]      VARCHAR (50)  NULL,
    [DateOfVisitation]         DATE          NULL,
    [UtilityBillSubmitted]     BIT           NULL,
    [AccountOpeningCompleted]  BIT           NULL,
    [RecentPassportPhoto]      BIT           NULL,
    [ConfirmationName]         VARCHAR (50)  NULL,
    [ConfirmationDate]         DATE          NULL,
    [DeferralFullName]         VARCHAR (50)  NULL,
    [DeferralDate]             DATE          NULL,
    [DeferralApproved]         VARCHAR (50)  NULL,
    [Active]                   BIT           NULL,
    [Deleted]                  BIT           NULL,
    [CreatedBy]                VARCHAR (50)  NULL,
    [CreatedOn]                DATETIME      NULL,
    [UpdatedBy]                VARCHAR (50)  NULL,
    [UpdatedOn]                DATETIME      NULL,
    CONSTRAINT [PK_deposit_customerkyc] PRIMARY KEY CLUSTERED ([KycId] ASC),
    CONSTRAINT [FK_deposit_customerkyc_deposit_accountopening] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[deposit_accountopening] ([CustomerId])
);

