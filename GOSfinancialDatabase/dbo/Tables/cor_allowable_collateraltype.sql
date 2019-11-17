CREATE TABLE [dbo].[cor_allowable_collateraltype] (
    [AllowableCollateralId] INT IDENTITY (1, 1) NOT NULL,
    [ProductId]             INT NOT NULL,
    [CollateralTypeId]      INT NOT NULL,
    CONSTRAINT [PK_cor_allowable_collateraltype] PRIMARY KEY CLUSTERED ([AllowableCollateralId] ASC)
);

