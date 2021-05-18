DROP FUNCTION IF EXISTS fnGetLoginConfirmation
GO

CREATE FUNCTION fnGetLoginConfirmation (@userN VARCHAR(40), @userP VARCHAR(40))
    RETURNS BIT 
    WITH ENCRYPTION
    AS BEGIN
        BEGIN
        IF EXISTS (
        SELECT * FROM Users u 
        WHERE (userName = @userN) AND (userPassword = @userP))
        RETURN 1
        END
    RETURN 0
    END
    GO

print dbo.fnGetLoginConfirmation('WillBeck74', '123')


