CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(255) UNIQUE NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Role VARCHAR(20) NOT NULL
);

-- Admins Table
CREATE TABLE Admins (
    AdminID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(255),
    UserID INT UNIQUE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Teachers Table
CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(255),
    UserID INT UNIQUE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(255),
    UserID INT UNIQUE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Semesters Table
CREATE TABLE Semesters (
    SemesterID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL
);

-- Courses Table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Code VARCHAR(20) UNIQUE NOT NULL,
    SemesterID INT,
    AdminID INT,
    FOREIGN KEY (SemesterID) REFERENCES Semesters(SemesterID),
    FOREIGN KEY (AdminID) REFERENCES Admins(AdminID),
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);

-- Enrollments Table
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Grades Table
CREATE TABLE Grades (
    GradeID INT PRIMARY KEY,
    Value VARCHAR(2) NOT NULL, -- Assuming grades like A, B, C, etc.
    DateGraded DATE NOT NULL,
    TeacherID INT,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
