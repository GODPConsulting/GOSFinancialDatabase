CREATE TABLE [dbo].[cor_companystructure] (
    [CompanyStructureId] INT           IDENTITY (1, 1) NOT NULL,
    [Name]               VARCHAR (250) COLLATE Latin1_General_CI_AS NOT NULL,
    [StructureTypeId]    INT           NULL,
    [CountryId]          INT           NULL,
    [Address]            VARCHAR (MAX) COLLATE Latin1_General_CI_AS NULL,
    [HeadStaffId]        INT           NULL,
    [ParentCompanyID]    INT           CONSTRAINT [DF_Table_1_ParentID] DEFAULT ((0)) NULL,
    [Parent]             VARCHAR (250) NULL,
    [CompanyId]          INT           NULL,
    [Active]             BIT           NULL,
    [Deleted]            BIT           NULL,
    [CreatedBy]          VARCHAR (50)  NULL,
    [CreatedOn]          DATETIME      NULL,
    [UpdatedBy]          VARCHAR (50)  NULL,
    [UpdatedOn]          DATETIME      NULL,
    CONSTRAINT [PK_cor_companystructure] PRIMARY KEY CLUSTERED ([CompanyStructureId] ASC)
);

