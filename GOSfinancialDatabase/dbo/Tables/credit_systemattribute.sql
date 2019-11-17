CREATE TABLE [dbo].[credit_systemattribute] (
    [SystemAttributeId]   INT           IDENTITY (1, 1) NOT NULL,
    [SystemAttributeName] VARCHAR (250) NOT NULL,
    [Active]              BIT           NULL,
    [Deleted]             BIT           NULL,
    [CreatedBy]           VARCHAR (50)  NULL,
    [CreatedOn]           DATETIME      NULL,
    [UpdatedBy]           VARCHAR (50)  NULL,
    [UpdatedOn]           DATETIME      NULL,
    CONSTRAINT [PK_credit_systemattribute] PRIMARY KEY CLUSTERED ([SystemAttributeId] ASC)
);

