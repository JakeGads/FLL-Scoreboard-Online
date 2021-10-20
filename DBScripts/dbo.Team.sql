CREATE TABLE [dbo].[Team] (
    [Number] INT          IDENTITY (1, 1) NOT NULL,
    [Name]   VARCHAR (50) NULL,
    CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED ([Number] ASC)
);

