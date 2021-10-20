CREATE TABLE [dbo].[Event] (
    [id]            INT          IDENTITY (1, 1) NOT NULL,
    [Name]          VARCHAR (50) NULL,
    [User]          INT          NOT NULL,
    [EventSettings] INT          NOT NULL,
    CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_User] FOREIGN KEY ([User]) REFERENCES [dbo].[User] ([ID]),
    CONSTRAINT [FK_EventSettings] FOREIGN KEY ([EventSettings]) REFERENCES [dbo].[EventSettings] ([Id])
);

