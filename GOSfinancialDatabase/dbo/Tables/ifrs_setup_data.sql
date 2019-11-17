CREATE TABLE [dbo].[ifrs_setup_data] (
    [SetUpId]                  INT          IDENTITY (1, 1) NOT NULL,
    [Threshold]                FLOAT (53)   NULL,
    [Deteroriation_Level]      INT          NULL,
    [Classification_Type]      INT          NULL,
    [Historical_PD_Year_Count] INT          NULL,
    [PDBasis]                  BIT          NULL,
    [Ltpdapproach]             INT          NULL,
    [CCF]                      FLOAT (53)   NULL,
    [GroupBased]               VARCHAR (50) NULL,
    [RunDate]                  DATE         NULL,
    [Active]                   BIT          CONSTRAINT [DF_ifrs_setup_data_Active] DEFAULT ((1)) NULL,
    [Deleted]                  BIT          CONSTRAINT [DF_ifrs_setup_data_Deleted] DEFAULT ((0)) NULL,
    [CreatedBy]                VARCHAR (50) CONSTRAINT [DF_ifrs_setup_data_CreatedBy] DEFAULT ('auto') NULL,
    [CreatedOn]                DATETIME     CONSTRAINT [DF_ifrs_setup_data_CreatedOn] DEFAULT (getdate()) NULL,
    [UpdatedBy]                VARCHAR (50) CONSTRAINT [DF_ifrs_setup_data_UpdatedBy] DEFAULT ('auto') NULL,
    [UpdatedOn]                DATETIME     CONSTRAINT [DF_ifrs_setup_data_UpdatedOn] DEFAULT (getdate()) NULL,
    [RowVersion]               ROWVERSION   NOT NULL,
    CONSTRAINT [PK_ifrs_setup_data] PRIMARY KEY CLUSTERED ([SetUpId] ASC)
);

