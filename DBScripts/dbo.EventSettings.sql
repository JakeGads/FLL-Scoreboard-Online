CREATE TABLE [dbo].[EventSettings] (
    [Id]                 INT          NOT NULL,
    [Timer]              VARCHAR (50) DEFAULT ('02:30') NULL,
    [AverageScoresTaken] INT          DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

