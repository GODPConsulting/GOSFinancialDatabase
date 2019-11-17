﻿CREATE TABLE [dbo].[cor_approvallevelstaff] (
    [ApprovalLevelStaffId] INT             IDENTITY (1, 1) NOT NULL,
    [StaffId]              INT             NOT NULL,
    [ApprovalLevelId]      INT             NOT NULL,
    [Position]             INT             NOT NULL,
    [IsActive]             BIT             NULL,
    [MaximumAmount]        DECIMAL (18, 2) NULL,
    [CanViewDocument]      BIT             CONSTRAINT [DF_cor_approvallevelstaff_CanViewDocument] DEFAULT ((0)) NOT NULL,
    [CanViewApproval]      BIT             CONSTRAINT [DF_cor_approvallevelstaff_CanViewApproval] DEFAULT ((0)) NOT NULL,
    [CanApprove]           BIT             CONSTRAINT [DF_cor_approvallevelstaff_CanApprove] DEFAULT ((0)) NOT NULL,
    [CanUpload]            BIT             CONSTRAINT [DF_cor_approvallevelstaff_CanUpload] DEFAULT ((0)) NOT NULL,
    [CanEdit]              BIT             CONSTRAINT [DF_cor_approvallevelstaff_CanEdit] DEFAULT ((0)) NOT NULL,
    [CanReceiveEmail]      BIT             CONSTRAINT [DF_cor_approvallevelstaff_CanReceiveEmail] DEFAULT ((0)) NOT NULL,
    [CanRecieveSMS]        BIT             CONSTRAINT [DF_cor_approvallevelstaff_CanRecieveSMS] DEFAULT ((0)) NOT NULL,
    [CanEscalate]          BIT             CONSTRAINT [DF_cor_approvallevelstaff_CanEscalate] DEFAULT ((0)) NOT NULL,
    [Active]               BIT             NULL,
    [Deleted]              BIT             NULL,
    [CreatedBy]            VARCHAR (50)    NULL,
    [CreatedOn]            DATETIME        NULL,
    [UpdatedBy]            VARCHAR (50)    NULL,
    [UpdatedOn]            DATETIME        NULL,
    CONSTRAINT [PK_cor_approvallevelstaff] PRIMARY KEY CLUSTERED ([ApprovalLevelStaffId] ASC),
    CONSTRAINT [FK_cor_approvallevelstaff_cor_approvallevel] FOREIGN KEY ([ApprovalLevelId]) REFERENCES [dbo].[cor_approvallevel] ([ApprovalLevelId]),
    CONSTRAINT [FK_cor_approvallevelstaff_cor_staff] FOREIGN KEY ([StaffId]) REFERENCES [dbo].[cor_staff] ([StaffId])
);
