CREATE TABLE [dbo].[credit_collateraltype] (
    [CollateralTypeId]       INT           IDENTITY (1, 1) NOT NULL,
    [Name]                   VARCHAR (100) NOT NULL,
    [Details]                VARCHAR (MAX) NOT NULL,
    [RequireInsurancePolicy] BIT           NULL,
    [ValuationCycle]         INT           NULL,
    [HairCut]                INT           NULL,
    [AllowSharing]           BIT           NULL,
    [Active]                 BIT           NULL,
    [Deleted]                BIT           NULL,
    [CreatedBy]              VARCHAR (50)  NULL,
    [CreatedOn]              DATETIME      NULL,
    [UpdatedBy]              VARCHAR (50)  NULL,
    [UpdatedOn]              DATETIME      NULL,
    CONSTRAINT [PK_credit_collateraltype] PRIMARY KEY CLUSTERED ([CollateralTypeId] ASC)
);

