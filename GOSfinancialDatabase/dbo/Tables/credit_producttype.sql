CREATE TABLE [dbo].[credit_producttype] (
    [ProductTypeId]                      INT          IDENTITY (1, 1) NOT NULL,
    [ProductTypeName]                    VARCHAR (50) NOT NULL,
    [RequirePrincipalGL]                 BIT          NOT NULL,
    [RequireInterestIncomeExpenseGL]     BIT          NOT NULL,
    [RequireInterestReceivablePayableGL] BIT          NOT NULL,
    [Active]                             BIT          NULL,
    [Deleted]                            BIT          NULL,
    [CreatedBy]                          VARCHAR (50) NULL,
    [CreatedOn]                          DATETIME     NULL,
    [UpdatedBy]                          VARCHAR (50) NULL,
    [UpdatedOn]                          DATETIME     NULL,
    CONSTRAINT [PK__credit_producttype] PRIMARY KEY CLUSTERED ([ProductTypeId] ASC),
    CONSTRAINT [UQ__credit_producttype] UNIQUE NONCLUSTERED ([ProductTypeName] ASC)
);

