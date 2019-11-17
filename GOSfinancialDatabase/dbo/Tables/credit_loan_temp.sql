﻿CREATE TABLE [dbo].[credit_loan_temp] (
    [Loan_temp_Id]               INT             IDENTITY (1, 1) NOT NULL,
    [LoanId]                     INT             NOT NULL,
    [TargetId]                   INT             NOT NULL,
    [CustomerId]                 INT             NOT NULL,
    [ProductId]                  INT             NOT NULL,
    [LoanApplicationId]          INT             NOT NULL,
    [PrincipalFrequencyTypeId]   INT             NULL,
    [InterestFrequencyTypeId]    INT             NULL,
    [ScheduleTypeId]             INT             NULL,
    [CurrencyId]                 INT             NOT NULL,
    [ExchangeRate]               FLOAT (53)      NOT NULL,
    [ApprovalStatusId]           INT             NOT NULL,
    [ApprovedBy]                 INT             NOT NULL,
    [ApprovedComments]           VARCHAR (50)    NULL,
    [ApprovedDate]               DATE            NOT NULL,
    [BookingDate]                DATE            NOT NULL,
    [EffectiveDate]              DATE            NOT NULL,
    [MaturityDate]               DATE            NOT NULL,
    [LoanStatusId]               INT             NULL,
    [IsDisbursed]                BIT             NOT NULL,
    [DisbursedBy]                INT             NULL,
    [DisbursedComments]          VARCHAR (50)    NULL,
    [DisbursedDate]              DATE            NULL,
    [CompanyId]                  INT             NULL,
    [LoanRefNumber]              VARCHAR (50)    NULL,
    [PrincipalAmount]            MONEY           NOT NULL,
    [EquityContribution]         MONEY           NULL,
    [FirstPrincipalPaymentDate]  DATE            NULL,
    [FirstInterestPaymentDate]   DATE            NULL,
    [OutstandingPrincipal]       MONEY           NULL,
    [OutstandingInterest]        MONEY           NULL,
    [AccrualBasis]               INT             NULL,
    [FirstDayType]               INT             NULL,
    [NPLDate]                    DATE            NULL,
    [CustomerRiskRatingId]       INT             NULL,
    [LoanOperationId]            INT             NULL,
    [StaffId]                    INT             NULL,
    [CasaAccountId]              INT             NULL,
    [BranchId]                   INT             NULL,
    [PastDuePrincipal]           MONEY           NULL,
    [PastDueInterest]            MONEY           NULL,
    [InterestRate]               FLOAT (53)      NOT NULL,
    [InterestOnPastDueInterest]  DECIMAL (18, 2) NULL,
    [InterestOnPastDuePrincipal] DECIMAL (18, 2) NULL,
    [IntegralFeeAmount]          DECIMAL (18, 2) NULL,
    [Active]                     BIT             NOT NULL,
    [Deleted]                    BIT             NULL,
    [CreatedBy]                  VARCHAR (50)    NULL,
    [CreatedOn]                  DATETIME        NULL,
    [UpdatedBy]                  VARCHAR (50)    NULL,
    [UpdatedOn]                  DATETIME        NULL,
    CONSTRAINT [PK_credit_loan_temp] PRIMARY KEY CLUSTERED ([Loan_temp_Id] ASC)
);
