CREATE TABLE [dbo].[ifrs_computed_forcasted_pd_lgd] (
    [ComputedPDId] INT          IDENTITY (1, 1) NOT NULL,
    [ProductCode]  VARCHAR (50) NULL,
    [Year]         INT          NULL,
    [Type]         INT          NULL,
    [PD_LGD]       FLOAT (53)   NULL,
    [PD]           FLOAT (53)   NULL,
    [Rundate]      DATE         NULL,
    [Active]       BIT          CONSTRAINT [DF_ifrs_computed_forcasted_pds_Active] DEFAULT ((1)) NULL,
    [Deleted]      BIT          CONSTRAINT [DF_ifrs_computed_forcasted_pds_Deleted] DEFAULT ((0)) NULL,
    [CreatedBy]    VARCHAR (50) CONSTRAINT [DF_ifrs_computed_forcasted_pds_CreatedBy] DEFAULT ('auto') NULL,
    [CreatedOn]    DATETIME     CONSTRAINT [DF_ifrs_computed_forcasted_pds_CreatedOn] DEFAULT (getdate()) NULL,
    [UpdatedBy]    VARCHAR (50) CONSTRAINT [DF_ifrs_computed_forcasted_pds_UpdatedBy] DEFAULT ('auto') NULL,
    [UpdatedOn]    DATETIME     CONSTRAINT [DF_ifrs_computed_forcasted_pds_UpdatedOn] DEFAULT (getdate()) NULL,
    [RowVersion]   ROWVERSION   NOT NULL
);

