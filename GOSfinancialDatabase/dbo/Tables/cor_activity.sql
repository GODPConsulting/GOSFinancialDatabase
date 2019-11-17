CREATE TABLE [dbo].[cor_activity] (
    [ActivityId]       INT           IDENTITY (1, 1) NOT NULL,
    [ActivityParentId] INT           NOT NULL,
    [ActivityName]     VARCHAR (256) NOT NULL,
    [Active]           BIT           NULL,
    [Deleted]          BIT           NULL,
    [CreatedBy]        VARCHAR (50)  NULL,
    [CreatedOn]        DATETIME      NULL,
    [UpdatedBy]        VARCHAR (50)  NULL,
    [UpdatedOn]        DATETIME      NULL,
    CONSTRAINT [PK_cor_applicationactivity] PRIMARY KEY CLUSTERED ([ActivityId] ASC),
    CONSTRAINT [FK_cor_activity_cor_activityparent] FOREIGN KEY ([ActivityParentId]) REFERENCES [dbo].[cor_activityparent] ([ActivityParentId])
);

