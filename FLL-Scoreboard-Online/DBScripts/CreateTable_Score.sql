Use [ScoreBoard]

GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Score](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [Team] [int] NOT NULL,
    [Event] [int] NOT NULL,
    [Score] [int] NOT NULL
 CONSTRAINT [PK_Score] PRIMARY KEY CLUSTERED,
 CONSTRAINT [FK_Team] FOREIGN KEY ([Team]) REFERENCES [dbo].[Team] ([Number]),
 CONSTRAINT [FK_Event] FOREIGN KEY ([Event]) REFERENCES [dbo].[Event] ([ID])
 ON DELETE CASCADE,
)
GO