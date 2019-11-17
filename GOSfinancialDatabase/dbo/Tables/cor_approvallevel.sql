﻿CREATE TABLE [dbo].[cor_approvallevel] (
    [ApprovalLevelId]   INT             IDENTITY (1, 1) NOT NULL,
    [ApprovalLevelName] VARCHAR (250)   NOT NULL,
    [ApprovalGroupId]   INT             NOT NULL,
    [Position]          INT             NOT NULL,
    [IsActive]          BIT             NOT NULL,
    [MaximumAmount]     DECIMAL (18, 2) NULL,
    [CanViewDocument]   BIT             CONSTRAINT [DF_cor_approvallevel_CANVIEWDOCUMENT] DEFAULT ((0)) NOT NULL,
    [CanViewApproval]   BIT             CONSTRAINT [DF_cor_approvallevel_CANVIEWAPPROVAL] DEFAULT ((0)) NOT NULL,
    [CanApprove]        BIT             CONSTRAINT [DF_cor_approvallevel_CANAPPROVE] DEFAULT ((0)) NOT NULL,
    [CanUpload]         BIT             CONSTRAINT [DF_cor_approvallevel_CANUPLOAD] DEFAULT ((0)) NOT NULL,
    [CanEdit]           BIT             CONSTRAINT [DF_cor_approvallevel_CANEDIT] DEFAULT ((0)) NOT NULL,
    [CanReceiveEmail]   BIT             CONSTRAINT [DF_cor_approvallevel_CanReceiveEmail] DEFAULT ((0)) NOT NULL,
    [CanRecieveSMS]     BIT             CONSTRAINT [DF_cor_approvallevel_CanRecieveSMS] DEFAULT ((0)) NOT NULL,
    [CanEscalate]       BIT             CONSTRAINT [DF_cor_approvallevel_CANESCALATE] DEFAULT ((0)) NOT NULL,
    [Active]            BIT             NULL,
    [Deleted]           BIT             NULL,
    [CreatedBy]         VARCHAR (50)    NULL,
    [CreatedOn]         DATETIME        NULL,
    [UpdatedBy]         VARCHAR (50)    NULL,
    [UpdatedOn]         DATETIME        NULL,
    CONSTRAINT [PK_cor_approvallevel] PRIMARY KEY CLUSTERED ([ApprovalLevelId] ASC),
    CONSTRAINT [FK_cor_approvallevel_cor_approvalgroup] FOREIGN KEY ([ApprovalGroupId]) REFERENCES [dbo].[cor_approvalgroup] ([ApprovalGroupId])
);

