CREATE TABLE [dbo].[credit_collateralcustomerconsumption] (
    [CollateralCustomerConsumptionId] INT             IDENTITY (1, 1) NOT NULL,
    [CollateralCustomerId]            INT             NOT NULL,
    [LoanApplicationId]               INT             NOT NULL,
    [CustomerId]                      INT             NULL,
    [CollateralCurrentAmount]         DECIMAL (18, 2) NOT NULL,
    [ActualCollateralValue]           DECIMAL (18, 2) NOT NULL,
    [Amount]                          MONEY           NOT NULL,
    [CollateralType]                  VARCHAR (50)    NULL,
    [ExpectedCollateralValue]         INT             NOT NULL,
    [CollateralCode]                  VARCHAR (50)    NULL,
    [Active]                          BIT             NULL,
    [Deleted]                         BIT             NULL,
    [CreatedBy]                       VARCHAR (50)    NULL,
    [CreatedOn]                       DATETIME        NULL,
    [UpdatedBy]                       VARCHAR (50)    NULL,
    [UpdatedOn]                       DATETIME        NULL,
    CONSTRAINT [PK_credit_collateralcustomerconsumption] PRIMARY KEY CLUSTERED ([CollateralCustomerConsumptionId] ASC)
);

