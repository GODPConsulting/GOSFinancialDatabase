CREATE TABLE [dbo].[cor_errorlog] (
    [ErrorLogId]   INT            IDENTITY (1, 1) NOT NULL,
    [Username]     VARCHAR (255)  NULL,
    [ApiEndPoint]  VARCHAR (500)  NULL,
    [ErrorPath]    VARCHAR (255)  NULL,
    [ErrorSource]  VARCHAR (500)  NULL,
    [ErrorMessage] VARCHAR (1000) NULL,
    [ErrorType]    VARCHAR (255)  NULL,
    [StatusCode]   VARCHAR (50)   NULL,
    [AllXML]       VARCHAR (MAX)  NULL,
    [TimeUTC]      DATETIME       NULL,
    CONSTRAINT [PK_cor_errorlog] PRIMARY KEY CLUSTERED ([ErrorLogId] ASC)
);

