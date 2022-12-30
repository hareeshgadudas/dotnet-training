
CREATE PROCEDURE GetStates
AS
BEGIN
	SELECT * FROM [State]
END
GO


CREATE PROCEDURE GetStatesByID
(
@Id int
)
AS
BEGIN
	SELECT * FROM [State] Where Id =  @Id
END
GO


select * from city where Id=9