-- Insert Users (Admins, Teachers, and Students)
-- Admins
INSERT INTO users (UserID, Username, Password, Role) VALUES
(1, "BReese", 'WJuMwG', 'Admin'),
(2, "VPorter", '8pf6Ns', 'Admin');

-- Teachers
INSERT INTO users (UserID, Username, Password, Role) VALUES
(3, "BHensley", 'uVYZt8', 'Teacher'),
(4, "CHinton", '7ZNeHj', 'Teacher'),
(5, "MLeach", 'RF8W67', 'Teacher'),
(6, "JHolden", 'j3qx78', 'Teacher'),
(7, "GDoyle", 'twbUsS', 'Teacher'),
(8, "LHorn", '9r3xzS', 'Teacher'),
(9, "RRiggs", 'uVxrFk', 'Teacher');

-- Students
INSERT INTO users (UserID, Username, Password, Role) VALUES
(10, "JRodgers", 'kuDPH8', 'Student'),
(11, "JBaker", 'gP7YwF', 'Student'),
(12, "MCasey", 'T2S3c3', 'Student'),
(13, "KHawkins", 'AphaP7', 'Student'),
(14, "CCoffey", 'wzd7kL', 'Student'),
(15, "KFuentes", 'He8a2G', 'Student'),
(16, "CRatliff", 'vPSKPJ', 'Student'),
(17, "ITalley", 'KZMjh8', 'Student'),
(18, "SVaughan", 'yQW5sq', 'Student'),
(19, "MJenkins", 'uFdQqh', 'Student'),
(20, "WSimpson", 'prjTPc', 'Student'),
(21, "LByers", 'bg5cDS', 'Student'),
(22, "LStevenson", 'dmRygy', 'Student'),
(23, "APerez", '5FhE6M', 'Student'),
(24, "DJohnston", 'LpuNwY', 'Student'),
(25, "ABurt", 'qZYnxz', 'Student'),
(26, "BJuarez", '4mPJ9y', 'Student'),
(27, "CDeleon", 'MvV54d', 'Student'),
(28, "AFinch", 'hJtVvy', 'Student'),
(29, "CClements", 'X65MaF', 'Student');

-- Insert Admins
INSERT INTO admins (AdminID, Name, Email, UserID) VALUES
(501, "Bo Reese", 'bo.reese@mail.com', '1'),
(502, "Vivien Porter", 'vivien.porter@mail.com', '2');

-- Insert Teachers
INSERT INTO teachers (TeacherID, Name, Email, UserID) VALUES
(100, "Brooke Hensley", 'brooke.hensley@mail.com', '3'),
(200, "Cain Hinton", 'cain.hinton@mail.com', '4'),
(300, "Medge Leach", 'medge.leach@mail.com', '5'),
(400, "Joseph Holden", 'joseph.holden@mail.com', '6'),
(500, "Garth Doyle", 'garth.doyle@mail.com', '7'),
(600, "Lars Horn", 'lars.horn@mail.com', '8'),
(700, "Raymond Riggs", 'raymond.riggs@mail.com', '9');

INSERT INTO students (StudentID, Name, Email, UserID) VALUES
(101, "Jena Rodgers", 'jena.rodgers@mail.com', 10),
(102, "Jerry Baker", 'jerry.baker@mail.com', 11),
(103, "Martena Casey", 'martena.casey@mail.com', 12),
(104, "Kasper Hawkins", 'kasper.hawkins@mail.com', 13),
(105, "Cain Coffey", 'cain.coffey@mail.com', 14),
(106, "Kitra Fuentes", 'kitra.fuentes@mail.com', 15),
(107, "Cameron Ratliff", 'cameron.ratliff@mail.com', 16),
(108, "Isaac Talley", 'isaac.talley@mail.com', 17),
(109, "Sonya Vaughan", 'sonya.vaughan@mail.com', 18),
(110, "Mariam Jenkins", 'mariam.jenkins@mail.com', 19),
(111, "Walker Simpson", 'walker.simpson@mail.com', 20),
(112, "Lucian Byers", 'lucian.byers@mail.com', 21),
(113, "Lara Stevenson", 'lara.stevenson@mail.com', 22),
(114, "Aretha Perez", 'aretha.perez@mail.com', 23),
(115, "Devin Johnston", 'devin.johnston@mail.com', 24),
(116, "Alexander Burt", 'alexander.burt@mail.com', 25),
(117, "Blaze Juarez", 'blaze.juarez@mail.com', 26),
(118, "Clare Deleon", 'clare.deleon@mail.com', 27),
(119, "Addison Finch", 'addison.finch@mail.com', 28),
(120, "Carly Clements", 'carly.clements@mail.com', 29);

-- Insert Semesters
INSERT INTO semesters (SemesterID, Name, StartDate, EndDate) VALUES
(901, 'Fall 2023', '2023-09-01', '2023-12-31'),
(902, 'Spring 2024', '2024-01-01', '2024-05-31');

-- Insert Courses
INSERT INTO courses (CourseID, Name, Code, SemesterID, AdminID) VALUES
(1001, 'Introduction to Computer Science', 'CS101', 901, 501),
(1002, 'Database Management', 'DBM201', 901, 501), 
(1003, 'Linear Algebra', 'MATH202', 901, 502),
(1004, 'English Literature', 'ENG101', 901, 502),
(1005, 'History of Art', 'ART200', 902, 501),
(1006, 'Data Structures', 'CS201', 902, 501),
(1007, 'Physics 101', 'PHY101', 902, 502);

-- Insert Enrollments (Random assignment of students to courses)
INSERT INTO enrollments (StudentID, CourseID) VALUES
(101, 1001), (102, 1001), (103, 1001), (104, 1002), (105, 1002),
(106, 1003), (107, 1003), (108, 1004), (109, 1004), (110, 1005),
(111, 1005), (112, 1005), (113, 1006), (114, 1006), (115, 1007),
(116, 1007), (117, 1007), (118, 1007), (119, 1007), (120, 1007);

-- Insert Grades (Random grades assigned by teachers)
INSERT INTO grades (Value, DateGraded, TeacherID, StudentID, CourseID) VALUES
('A', '2023-12-15', 100, 101, 1001), ('B', '2023-12-15', 100, 102, 1001),
('A-', '2023-12-15', 100, 103, 1001), ('B+', '2023-12-15', 200, 104, 1002),
('C', '2023-12-15', 200, 105, 1002), ('A', '2023-12-15', 300, 106, 1003),
('B', '2023-12-15', 300, 107, 1003), ('A-', '2023-12-15', 400, 108, 1004),
('B+', '2023-12-15', 400, 109, 1004), ('A+', '2023-12-15', 500, 110, 1005),
('A', '2023-12-15', 500, 111, 1005), ('B-', '2023-12-15', 500, 112, 1005),
('C+', '2023-12-15', 600, 113, 1006), ('B', '2023-12-15', 600, 114, 1006),
('A-', '2023-12-15', 700, 115, 1007), ('B+', '2023-12-15', 700, 116, 1007),
('A', '2023-12-15', 700, 117, 1007), ('B', '2023-12-15', 700, 118, 1007),
('C', '2023-12-15', 700, 119, 1007), ('A-', '2023-12-15', 700, 120, 1007);
