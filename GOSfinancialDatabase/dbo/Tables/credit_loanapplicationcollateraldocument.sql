CREATE TABLE [dbo].[credit_loanapplicationcollateraldocument] (
    [LoanApplicationCollateralDocumentId] INT             IDENTITY (1, 1) NOT NULL,
    [LoanApplicationId]                   INT             NULL,
    [CollateralTypeId]                    INT             NULL,
    [Document]                            VARBINARY (MAX) NULL,
    [DocumentName]                        NCHAR (256)     NULL,
    [Active]                              BIT             NOT NULL,
    [Deleted]                             BIT             NULL,
    [CreatedBy]                           VARCHAR (50)    NULL,
    [CreatedOn]                           DATETIME        NULL,
    [UpdatedBy]                           VARCHAR (50)    NULL,
    [UpdatedOn]                           DATETIME        NULL,
    [CollateralCustomerId]                INT             NULL,
    CONSTRAINT [PK_credit_loanapplicationcollateraldocument] PRIMARY KEY CLUSTERED ([LoanApplicationCollateralDocumentId] ASC)
);

