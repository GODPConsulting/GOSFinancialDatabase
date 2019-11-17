CREATE TABLE [dbo].[cor_city] (
    [CityId]    INT           IDENTITY (1, 1) NOT NULL,
    [CityCode]  VARCHAR (10)  NOT NULL,
    [CityName]  VARCHAR (250) NOT NULL,
    [StateId]   INT           NOT NULL,
    [Active]    BIT           NULL,
    [Deleted]   BIT           NULL,
    [CreatedBy] VARCHAR (50)  NULL,
    [CreatedOn] DATETIME      NULL,
    [UpdatedBy] VARCHAR (50)  NULL,
    [UpdatedOn] DATETIME      NULL,
    CONSTRAINT [PK_cor_city] PRIMARY KEY CLUSTERED ([CityId] ASC),
    CONSTRAINT [FK_cor_city_cor_state] FOREIGN KEY ([StateId]) REFERENCES [dbo].[cor_state] ([StateId])
);

