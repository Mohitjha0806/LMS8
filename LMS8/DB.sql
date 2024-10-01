SELECT * FROM tblStudentReg;

CREATE PROC Usp_insertStudentRegistration
(
    @StudentName VARCHAR(50),
    @StudentID INT,
    @Subject VARCHAR(50),
    @Semester VARCHAR(50),
    @DOB VARCHAR(50),
    @MobileNumber VARCHAR(50)
)
AS
BEGIN
    INSERT INTO tblStudentReg([StudentName], [StudentID], [Subject], [Semester], [DOB], [MobileNumber])
    VALUES
    (
        @StudentName,
        @StudentID,
        @Subject,
        @Semester,
        @DOB,
        @MobileNumber
    )
END;
