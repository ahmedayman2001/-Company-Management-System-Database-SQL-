
/*

( SQL INSERT DATA ) : 

Important: because of FK dependencies, the insert order must be:

1️⃣ Dept
2️⃣ Skill
3️⃣ Project
4️⃣ EMP
5️⃣ EMP_PHONE
6️⃣ Car
7️⃣ Dependent
8️⃣ Work_On
9️⃣ Skills_Used




*/

 INSERT INTO Dept (DNo, DName, Loc, SSN) VALUES
(1, 'IT', 'Cairo', NULL),
(2, 'HR', 'Giza', NULL),
(3, 'Finance', 'Alex', NULL);


INSERT INTO Skill (S_ID, SkillName) VALUES
(1, 'C++'),
(2, 'SQL'),
(3, 'Python'),
(4, 'Networking');



INSERT INTO Project (PNo, PName) VALUES
(101, 'Bank System'),
(102, 'AI Platform'),
(103, 'Web Portal');



INSERT INTO EMP 
(SSN, ID, Name, Salary, DoB, Street, Zone, Sup_SSN, DNo, ContractID, StDate, Type)
VALUES
(1001, 1, 'Ahmed', 8000, '1998-02-10', 'Nasr St', 'Zone1', NULL, 1, 5001, '2023-01-01', 'FullTime'),

(1002, 2, 'Omar', 7500, '1997-05-12', 'Tahrir St', 'Zone2', 1001, 1, 5002, '2023-03-01', 'FullTime'),

(1003, 3, 'Ali', 6000, '1999-08-20', 'Giza St', 'Zone3', 1001, 2, 5003, '2024-01-01', 'PartTime');




INSERT INTO EMP_PHONE (SSN, Phone) VALUES
(1001, '01011111111'),
(1001, '01022222222'),
(1002, '01033333333'),
(1003, '01044444444');



INSERT INTO Car (PlateNo, MOD, Color, SSN) VALUES
('ABC123', 'Toyota', 'Black', 1001),
('XYZ789', 'BMW', 'White', 1002),
('LMN456', 'Kia', 'Red', 1003);



INSERT INTO Dependent (SSN, Name, Relation) VALUES
(1001, 'Sara', 'Wife'),
(1001, 'Youssef', 'Son'),
(1002, 'Mona', 'Wife');




INSERT INTO Dependent (SSN, Name, Relation) VALUES
(1001, 'Sara', 'Wife'),
(1001, 'Youssef', 'Son'),
(1002, 'Mona', 'Wife');



INSERT INTO Work_On (SSN, PNo, Hours) VALUES
(1001, 101, 20),
(1001, 102, 15),
(1002, 101, 10),
(1003, 103, 25);



INSERT INTO Skills_Used (SSN, PNo, S_ID) VALUES
(1001, 101, 1),
(1001, 102, 2),
(1002, 101, 2),
(1003, 103, 3);

