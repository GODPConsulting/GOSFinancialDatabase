CREATE TABLE [dbo].[cor_messagelog] (
    [MessageId]        INT            IDENTITY (1, 1) NOT NULL,
    [FromAddress]      VARCHAR (1000) COLLATE Latin1_General_CI_AS NOT NULL,
    [ToAddress]        VARCHAR (2000) COLLATE Latin1_General_CI_AS NOT NULL,
    [MessageBody]      VARCHAR (MAX)  COLLATE Latin1_General_CI_AS NOT NULL,
    [MessageSubject]   VARCHAR (1000) COLLATE Latin1_General_CI_AS NOT NULL,
    [MessageStatusId]  SMALLINT       NOT NULL,
    [MessageTypeId]    SMALLINT       NOT NULL,
    [DateTimeRecieved] DATETIME       NOT NULL,
    [SendOnDateTime]   DATETIME       NOT NULL,
    [DateTimeSent]     DATETIME       NULL,
    [GateWayResponse]  VARCHAR (2000) COLLATE Latin1_General_CI_AI NULL,
    [OperationId]      INT            NULL,
    [TargetId]         INT            NULL,
    CONSTRAINT [PK_cor_messagelog] PRIMARY KEY CLUSTERED ([MessageId] ASC)
);

