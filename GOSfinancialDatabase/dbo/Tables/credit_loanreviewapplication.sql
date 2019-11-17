﻿CREATE TABLE [dbo].[credit_loanreviewapplication] (
    [LoanReviewApplicationId]   INT           IDENTITY (1, 1) NOT NULL,
    [LoanId]                    INT           NOT NULL,
    [ProductId]                 INT           NOT NULL,
    [OperationId]               INT           NOT NULL,
    [CustomerId]                INT           NOT NULL,
    [ReviewDetails]             VARCHAR (MAX) NOT NULL,
    [ApprovalStatusId]          INT           NOT NULL,
    [GenerateOfferLetter]       BIT           CONSTRAINT [DF_credit_loanreviewapplication_GenerateOfferLetter] DEFAULT ((0)) NOT NULL,
    [OperationPerformed]        BIT           NULL,
    [ProposedTenor]             INT           NOT NULL,
    [ProposedRate]              FLOAT (53)    NOT NULL,
    [ProposedAmount]            MONEY         NOT NULL,
    [ApprovedTenor]             INT           NOT NULL,
    [ApprovedRate]              FLOAT (53)    NOT NULL,
    [ApprovedAmount]            MONEY         NOT NULL,
    [PrincipalFrequencyTypeId]  INT           NULL,
    [InterestFrequencyTypeId]   INT           NULL,
    [FirstPrincipalPaymentDate] DATE          NULL,
    [FirstInterestPaymentDate]  DATE          NULL,
    [Active]                    BIT           NULL,
    [Deleted]                   BIT           NULL,
    [CreatedBy]                 VARCHAR (50)  NULL,
    [CreatedOn]                 DATETIME      NULL,
    [UpdatedBy]                 VARCHAR (50)  NULL,
    [UpdatedOn]                 DATETIME      NULL,
    CONSTRAINT [PK_credit_loanreviewapplication] PRIMARY KEY CLUSTERED ([LoanReviewApplicationId] ASC)
);

