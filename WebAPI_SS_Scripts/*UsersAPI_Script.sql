DROP PROCEDURE dbo.spGetUsers
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.spGetUsers
AS
BEGIN
    -- body of the stored procedure
    SELECT * FROM Users
END
GO


EXEC spGetUsers