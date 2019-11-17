CREATE TABLE [dbo].[credit_frequencytype] (
    [FrequencyTypeId] INT          IDENTITY (1, 1) NOT NULL,
    [Mode]            VARCHAR (50) NOT NULL,
    [Value]           FLOAT (53)   NOT NULL,
    [IsVisible]       BIT          NULL,
    [Active]          BIT          NULL,
    [Deleted]         BIT          NULL,
    [CreatedBy]       VARCHAR (50) NULL,
    [CreatedOn]       DATETIME     NULL,
    [UpdatedBy]       VARCHAR (50) NULL,
    [UpdatedOn]       DATETIME     NULL,
    CONSTRAINT [PK_credit_frequencytype] PRIMARY KEY CLUSTERED ([FrequencyTypeId] ASC)
);

