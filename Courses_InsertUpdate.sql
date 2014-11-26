CREATE PROCEDURE Courses_InsertUpdate
(
	@UserId uniqueidentifier,
	@Prefix varchar(5),
	@Number varchar(5),
	@Description varchar(100)
)
AS
DECLARE @RecordExists int;
SELECT @RecordExists = COUNT(UserId) 
FROM Courses
WHERE UserId=@UserId;

IF @RecordExists = 0
BEGIN
INSERT INTO Courses(UserId, Prefix, Number, Description)
VALUES (@UserId, @Prefix, @Number, @Description);
END
ELSE
BEGIN
UPDATE Courses
SET Prefix=@Prefix,
Number=@Number,
Description=@Description
WHERE UserId=@UserId;
END