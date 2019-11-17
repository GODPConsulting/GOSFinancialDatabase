CREATE TABLE [dbo].[cor_passwordhistory] (
    [PasswordHistoryId] INT           IDENTITY (1, 1) NOT NULL,
    [StaffId]           INT           NOT NULL,
    [PasswordHash]      VARCHAR (MAX) NOT NULL,
    [PasswordSalt]      VARCHAR (MAX) NOT NULL,
    [Active]            BIT           NULL,
    [Deleted]           BIT           NULL,
    [CreatedBy]         VARCHAR (50)  NULL,
    [CreatedOn]         DATETIME      NULL,
    [UpdatedBy]         VARCHAR (50)  NULL,
    [UpdatedOn]         DATETIME      NULL,
    CONSTRAINT [PK_cor_passwordhistory] PRIMARY KEY CLUSTERED ([PasswordHistoryId] ASC),
    CONSTRAINT [FK_cor_passwordhistory_cor_staff] FOREIGN KEY ([StaffId]) REFERENCES [dbo].[cor_staff] ([StaffId])
);

