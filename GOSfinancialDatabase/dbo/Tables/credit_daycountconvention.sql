CREATE TABLE [dbo].[credit_daycountconvention] (
    [DayCountConventionId]   INT           IDENTITY (1, 1) NOT NULL,
    [DayCountConventionName] VARCHAR (250) NOT NULL,
    [DaysInAYear]            INT           NOT NULL,
    [IsVisible]              BIT           NULL,
    [Active]                 BIT           NULL,
    [Deleted]                BIT           NULL,
    [CreatedBy]              VARCHAR (50)  NULL,
    [CreatedOn]              DATETIME      NULL,
    [UpdatedBy]              VARCHAR (50)  NULL,
    [UpdatedOn]              DATETIME      NULL,
    CONSTRAINT [PK_credit_daycountconvention] PRIMARY KEY CLUSTERED ([DayCountConventionId] ASC)
);

