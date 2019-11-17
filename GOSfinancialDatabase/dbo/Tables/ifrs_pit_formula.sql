CREATE TABLE [dbo].[ifrs_pit_formula] (
    [PitFormularId]       INT            IDENTITY (1, 1) NOT NULL,
    [LoanReferenceNumber] VARCHAR (50)   NULL,
    [Equation]            NVARCHAR (MAX) NULL,
    [ComputedPd]          FLOAT (53)     NULL,
    [Type]                INT            NULL,
    [Rundate]             DATE           NULL,
    [Active]              BIT            NULL,
    [Deleted]             BIT            NULL,
    [Updatedby]           VARCHAR (50)   NULL,
    [Createdby]           VARCHAR (50)   NULL,
    [Updatedon]           DATE           NULL,
    [Createdon]           DATE           NULL
);

