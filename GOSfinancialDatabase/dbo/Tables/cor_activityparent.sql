CREATE TABLE [dbo].[cor_activityparent] (
    [ActivityParentId]   INT           IDENTITY (1, 1) NOT NULL,
    [ActivityParentName] VARCHAR (256) NOT NULL,
    [Active]             BIT           NULL,
    [Deleted]            BIT           NULL,
    [CreatedBy]          VARCHAR (50)  NULL,
    [CreatedOn]          DATETIME      NULL,
    [UpdatedBy]          VARCHAR (50)  NULL,
    [UpdatedOn]          DATETIME      NULL,
    CONSTRAINT [PK_cor_applicationactivityparent] PRIMARY KEY CLUSTERED ([ActivityParentId] ASC)
);

