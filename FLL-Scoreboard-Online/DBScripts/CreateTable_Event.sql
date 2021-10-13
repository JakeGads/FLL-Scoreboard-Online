Use [ScoreBoard]

GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Event](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [Text] [varchar(50)] NOT NULL,
    [User] [int] NOT NULL,
    CONSTRAINT [FK_User] FOREIGN KEY ([User]) REFERENCES [dbo].[User] ([UserID]),
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED,
)
GO