﻿CREATE TABLE [dbo].[cor_topclient] (
    [TopClientId]   INT           IDENTITY (1, 1) NOT NULL,
    [SupplierId]    INT           NOT NULL,
    [Name]          VARCHAR (250) NOT NULL,
    [Address]       VARCHAR (550) NOT NULL,
    [Email]         VARCHAR (50)  NOT NULL,
    [PhoneNo]       VARCHAR (50)  NOT NULL,
    [ContactPerson] VARCHAR (50)  NULL,
    [NoOfStaff]     INT           NULL,
    [Active]        BIT           NULL,
    [Deleted]       BIT           NULL,
    [CreatedBy]     VARCHAR (50)  NULL,
    [CreatedOn]     DATETIME      NULL,
    [UpdatedBy]     VARCHAR (50)  NULL,
    [UpdatedOn]     DATETIME      NULL,
    CONSTRAINT [PK_cor_topclient] PRIMARY KEY CLUSTERED ([TopClientId] ASC)
);

