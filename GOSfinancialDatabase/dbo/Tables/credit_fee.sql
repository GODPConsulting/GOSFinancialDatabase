CREATE TABLE [dbo].[credit_fee] (
    [FeeId]      INT           IDENTITY (1, 1) NOT NULL,
    [FeeName]    VARCHAR (250) NOT NULL,
    [IsIntegral] BIT           NOT NULL,
    [TotalFeeGL] INT           NULL,
    [Active]     BIT           NULL,
    [Deleted]    BIT           NULL,
    [CreatedBy]  VARCHAR (50)  NULL,
    [CreatedOn]  DATETIME      NULL,
    [UpdatedBy]  VARCHAR (50)  NULL,
    [UpdatedOn]  DATETIME      NULL,
    CONSTRAINT [PK_credit_fee] PRIMARY KEY CLUSTERED ([FeeId] ASC)
);

