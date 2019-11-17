﻿CREATE TABLE [dbo].[cor_staff] (
    [StaffId]       INT             IDENTITY (1, 1) NOT NULL,
    [StaffCode]     NVARCHAR (50)   COLLATE Latin1_General_CI_AS NULL,
    [FirstName]     NVARCHAR (50)   COLLATE Latin1_General_CI_AS NOT NULL,
    [LastName]      NVARCHAR (50)   COLLATE Latin1_General_CI_AS NOT NULL,
    [MiddleName]    NVARCHAR (50)   COLLATE Latin1_General_CI_AS NULL,
    [JobTitle]      INT             NOT NULL,
    [PhoneNumber]   NVARCHAR (100)  COLLATE Latin1_General_CI_AS NULL,
    [Email]         NVARCHAR (100)  COLLATE Latin1_General_CI_AS NULL,
    [Address]       NVARCHAR (100)  COLLATE Latin1_General_CI_AS NULL,
    [DateOfBirth]   DATE            NULL,
    [Gender]        NVARCHAR (10)   COLLATE Latin1_General_CI_AS NULL,
    [StateId]       INT             NULL,
    [CountryId]     INT             NULL,
    [Photo]         VARBINARY (MAX) NULL,
    [StaffLimit]    DECIMAL (18, 4) NULL,
    [AccessLevel]   INT             NULL,
    [StaffOfficeId] INT             NULL,
    [Active]        BIT             NULL,
    [Deleted]       BIT             NULL,
    [CreatedBy]     VARCHAR (50)    NULL,
    [CreatedOn]     DATETIME        NULL,
    [UpdatedBy]     VARCHAR (50)    NULL,
    [UpdatedOn]     DATETIME        NULL,
    CONSTRAINT [PK_cor_applicationuser] PRIMARY KEY CLUSTERED ([StaffId] ASC),
    CONSTRAINT [FK_cor_staff_cor_country] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[cor_country] ([CountryId]),
    CONSTRAINT [FK_cor_staff_cor_state] FOREIGN KEY ([StateId]) REFERENCES [dbo].[cor_state] ([StateId])
);

