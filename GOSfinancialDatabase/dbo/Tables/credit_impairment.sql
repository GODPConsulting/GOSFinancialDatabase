CREATE TABLE [dbo].[credit_impairment] (
    [ImpairmentId] INT              IDENTITY (1, 1) NOT NULL,
    [ProductCode]  VARCHAR (250)    NOT NULL,
    [ProductName]  VARCHAR (250)    NOT NULL,
    [12MonthPD]    DECIMAL (36, 20) NOT NULL,
    [LifeTimePD]   DECIMAL (36, 20) NOT NULL,
    [12MonthLGD]   DECIMAL (36, 20) NOT NULL,
    [LifeTimeLGD]  DECIMAL (36, 20) NOT NULL,
    [12MonthEAD]   DECIMAL (36, 20) NOT NULL,
    [LifeTimeEAD]  DECIMAL (36, 20) NOT NULL,
    [12MonthECL]   DECIMAL (36, 20) NULL,
    [LifeTimeECL]  DECIMAL (36, 20) NULL,
    [Date]         DATE             NOT NULL,
    CONSTRAINT [PK_credit_impairment] PRIMARY KEY CLUSTERED ([ImpairmentId] ASC)
);

