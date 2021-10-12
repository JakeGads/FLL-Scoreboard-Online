Use [ScoreBoard]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TblUser](
    [UserID] [int] IDENTITY(1,1) NOT NULL,
    [FullName] [varchar](50) NULL,
    [Email] [varchar](50) NULL,
    [Password] [varbinary](128) NULL,
    [Salt] [varbinary](128) NULL,
 CONSTRAINT [PK_TblUser] PRIMARY KEY CLUSTERED
(
    [UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO