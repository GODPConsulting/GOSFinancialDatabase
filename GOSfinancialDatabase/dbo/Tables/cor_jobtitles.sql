CREATE TABLE [dbo].[cor_jobtitles] (
    [JobTitleId]       INT            IDENTITY (1, 1) NOT NULL,
    [Name]             VARCHAR (250)  NULL,
    [JobDescription]   VARCHAR (2000) NULL,
    [Skills]           VARCHAR (1000) NULL,
    [SkillDescription] VARCHAR (2000) NULL,
    [Active]           BIT            NULL,
    [Deleted]          BIT            NULL,
    [CreatedBy]        VARCHAR (50)   NULL,
    [CreatedOn]        DATETIME       NULL,
    [UpdatedBy]        VARCHAR (50)   NULL,
    [UpdatedOn]        DATETIME       NULL,
    CONSTRAINT [PK_cor_jobtitles] PRIMARY KEY CLUSTERED ([JobTitleId] ASC)
);

