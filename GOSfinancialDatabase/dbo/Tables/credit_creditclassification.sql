CREATE TABLE [dbo].[credit_creditclassification] (
    [CreditClassificationId]  INT          IDENTITY (1, 1) NOT NULL,
    [Description]             NCHAR (256)  NOT NULL,
    [DaysAtRisk]              NCHAR (256)  NOT NULL,
    [ProvisioningRequirement] INT          NOT NULL,
    [UpperLimit]              INT          NULL,
    [LowerLimit]              INT          NULL,
    [Active]                  BIT          NULL,
    [Deleted]                 BIT          NULL,
    [CreatedBy]               VARCHAR (50) NULL,
    [CreatedOn]               DATETIME     NULL,
    [UpdatedBy]               VARCHAR (50) NULL,
    [UpdatedOn]               DATETIME     NULL,
    CONSTRAINT [PK_credit_creditclassification] PRIMARY KEY CLUSTERED ([CreditClassificationId] ASC)
);

