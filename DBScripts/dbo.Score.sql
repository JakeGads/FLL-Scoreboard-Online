CREATE TABLE [dbo].[Score] (
    [ID]    INT IDENTITY (1, 1) NOT NULL,
    [Team]  INT NOT NULL,
    [Event] INT NOT NULL,
    [Score] INT NOT NULL,
    CONSTRAINT [PK_Score] PRIMARY KEY CLUSTERED ([Score] ASC),
    CONSTRAINT [FK_Team] FOREIGN KEY ([Team]) REFERENCES [dbo].[Team] ([Number]),
    CONSTRAINT [FK_Event] FOREIGN KEY ([Event]) REFERENCES [dbo].[Event] ([id]) ON DELETE CASCADE
);

