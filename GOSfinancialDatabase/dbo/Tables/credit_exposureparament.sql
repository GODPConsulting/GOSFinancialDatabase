CREATE TABLE [dbo].[credit_exposureparament] (
    [ExposureParameterId] INT             IDENTITY (1, 1) NOT NULL,
    [CustomerTypeId]      INT             NULL,
    [Description]         VARCHAR (50)    NULL,
    [Percentage]          DECIMAL (18, 2) NULL,
    [ShareHolderAmount]   DECIMAL (18, 2) NULL,
    [Amount]              DECIMAL (18, 2) NULL,
    [Active]              BIT             NULL,
    [Deleted]             BIT             NULL,
    [CreatedBy]           VARCHAR (50)    NULL,
    [CreatedOn]           DATETIME        NULL,
    [UpdatedBy]           VARCHAR (50)    NULL,
    [UpdatedOn]           DATETIME        NULL,
    CONSTRAINT [PK_credit_exposureparament] PRIMARY KEY CLUSTERED ([ExposureParameterId] ASC)
);

