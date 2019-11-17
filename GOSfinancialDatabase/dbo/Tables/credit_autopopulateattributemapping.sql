CREATE TABLE [dbo].[credit_autopopulateattributemapping] (
    [AutoPopulateAttributeMappingId] INT          IDENTITY (1, 1) NOT NULL,
    [AutoPopulateAttributeId]        INT          NOT NULL,
    [AttributeId]                    INT          NOT NULL,
    [Active]                         BIT          NULL,
    [Deleted]                        BIT          NULL,
    [CreatedBy]                      VARCHAR (50) NULL,
    [CreatedOn]                      DATETIME     NULL,
    [UpdatedBy]                      VARCHAR (50) NULL,
    [UpdatedOn]                      DATETIME     NULL,
    CONSTRAINT [PK_credit_autopopulateattributemapping] PRIMARY KEY CLUSTERED ([AutoPopulateAttributeMappingId] ASC),
    CONSTRAINT [FK_credit_autopopulateattributemapping_credit_autopopulateattributes] FOREIGN KEY ([AutoPopulateAttributeId]) REFERENCES [dbo].[credit_autopopulateattributes] ([AutoPopulateAttributesId]),
    CONSTRAINT [FK_credit_autopopulateattributemapping_credit_creditriskattribute] FOREIGN KEY ([AttributeId]) REFERENCES [dbo].[credit_creditriskattribute] ([CreditRiskAttributeId])
);

