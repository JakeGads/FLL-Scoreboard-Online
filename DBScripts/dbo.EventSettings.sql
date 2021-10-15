CREATE TABLE [dbo].[EventSettings]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Timer] VARCHAR(50) NULL DEFAULT '02:30', 
    [AverageScoresTaken] INT NULL DEFAULT 1
)

