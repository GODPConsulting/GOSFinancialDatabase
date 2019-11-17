﻿CREATE TABLE [dbo].[deposit_customerdirectors] (
    [DirectorId]           INT             IDENTITY (1, 1) NOT NULL,
    [CustomerId]           INT             NOT NULL,
    [TitleId]              INT             NULL,
    [GenderId]             INT             NULL,
    [MaritalStatusId]      INT             NULL,
    [Surname]              VARCHAR (50)    NULL,
    [Firstname]            VARCHAR (50)    NULL,
    [Othername]            VARCHAR (50)    NULL,
    [IdentificationType]   VARCHAR (50)    NULL,
    [IdentificationNumber] VARCHAR (50)    NULL,
    [Telephone]            VARCHAR (50)    NULL,
    [Mobile]               VARCHAR (50)    NULL,
    [Email]                VARCHAR (50)    NULL,
    [SignatureUpload]      VARBINARY (MAX) NULL,
    [Date]                 DATE            NULL,
    [DoB]                  DATE            NULL,
    [PlaceOfBirth]         VARCHAR (50)    NULL,
    [MaidenName]           VARCHAR (50)    NULL,
    [NextofKin]            VARCHAR (50)    NULL,
    [LGA]                  INT             NULL,
    [StateOfOrigin]        INT             NULL,
    [TaxIDNumber]          VARCHAR (50)    NULL,
    [BVN]                  INT             NULL,
    [MeansOfID]            VARCHAR (50)    NOT NULL,
    [IDExpiryDate]         DATE            NULL,
    [IDIssueDate]          DATE            NULL,
    [Occupation]           VARCHAR (50)    NULL,
    [JobTitle]             VARCHAR (50)    NULL,
    [Position]             VARCHAR (50)    NULL,
    [Nationality]          INT             NULL,
    [ResidentOfCountry]    BIT             NULL,
    [ResidentPermit]       VARCHAR (50)    NULL,
    [PermitIssueDate]      DATE            NULL,
    [PermitExpiryDate]     DATE            NULL,
    [SocialSecurityNumber] VARCHAR (50)    NULL,
    [Address1]             VARCHAR (50)    NULL,
    [City1]                VARCHAR (50)    NULL,
    [State1]               VARCHAR (50)    NULL,
    [Country1]             VARCHAR (50)    NULL,
    [Address2]             VARCHAR (50)    NULL,
    [City2]                VARCHAR (50)    NULL,
    [State2]               VARCHAR (50)    NULL,
    [Country2]             VARCHAR (50)    NULL,
    [Active]               BIT             NULL,
    [Deleted]              BIT             NULL,
    [CreatedBy]            VARCHAR (50)    NULL,
    [CreatedOn]            DATETIME        NULL,
    [UpdatedBy]            VARCHAR (50)    NULL,
    [UpdatedOn]            DATETIME        NULL,
    CONSTRAINT [PK_deposit_customerdirectors] PRIMARY KEY CLUSTERED ([DirectorId] ASC),
    CONSTRAINT [FK_deposit_customerdirectors_deposit_accountopening] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[deposit_accountopening] ([CustomerId])
);

