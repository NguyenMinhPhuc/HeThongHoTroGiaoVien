IF (NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'Personal')) 
BEGIN
    EXEC ('CREATE SCHEMA [Personal] AUTHORIZATION [dbo]')
END
GO
ALTER SCHEMA Personal 
    TRANSFER [dbo].[Class]
GO
ALTER SCHEMA Personal 
    TRANSFER [dbo].[Comment]
GO
ALTER SCHEMA Personal 
    TRANSFER [dbo].[CommentType]
GO
ALTER SCHEMA Personal 
    TRANSFER [dbo].[Familes]
GO
ALTER SCHEMA Personal 
    TRANSFER [dbo].[Household]
GO
ALTER SCHEMA Personal 
    TRANSFER [dbo].[Mark]
GO
ALTER SCHEMA Personal 
    TRANSFER [dbo].[Student]
GO
ALTER SCHEMA Personal 
    TRANSFER [dbo].[Teacher]
GO
    
