
     CREATE TABLE EMP (
    SSN INT PRIMARY KEY,
    ID INT,
    Name VARCHAR(50),
    Salary DECIMAL(10,2),
    DoB DATE,
    Street VARCHAR(100),
    Zone VARCHAR(50),
    Sup_SSN INT,
    DNo INT,
    ContractID INT,
    StDate DATE,
    Type VARCHAR(20),

    FOREIGN KEY (Sup_SSN) REFERENCES EMP(SSN),
    FOREIGN KEY (DNo) REFERENCES DEPT(DNo)
);




CREATE TABLE EMP_PHONE (
    SSN INT,
    Phone VARCHAR(20),
    PRIMARY KEY (SSN, Phone),
    FOREIGN KEY (SSN) REFERENCES EMP(SSN)
);





CREATE TABLE Car (
    PlateNo VARCHAR(20) PRIMARY KEY,
    MOD VARCHAR(50),
    Color VARCHAR(30),
    SSN INT,
    FOREIGN KEY (SSN) REFERENCES EMP(SSN)
);




CREATE TABLE Dept (
    DNo INT PRIMARY KEY,
    DName VARCHAR(50),
    Loc VARCHAR(50),
    SSN INT,
    FOREIGN KEY (SSN) REFERENCES EMP(SSN)
);




CREATE TABLE Skill (
    S_ID INT PRIMARY KEY,
    SkillName VARCHAR(50)
);




CREATE TABLE Project (
    PNo INT PRIMARY KEY,
    PName VARCHAR(50)
);




CREATE TABLE Dependent (
    SSN INT,
    Name VARCHAR(50),
    Relation VARCHAR(30),
    PRIMARY KEY (SSN, Name),
    FOREIGN KEY (SSN) REFERENCES EMP(SSN)
);



CREATE TABLE Work_On (
    SSN INT,
    PNo INT,
    Hours INT,
    PRIMARY KEY (SSN, PNo),
    FOREIGN KEY (SSN) REFERENCES EMP(SSN),
    FOREIGN KEY (PNo) REFERENCES Project(PNo)
);




CREATE TABLE Skills_Used (
    SSN INT,
    PNo INT,
    S_ID INT,
    PRIMARY KEY (SSN, PNo, S_ID),
    FOREIGN KEY (SSN) REFERENCES EMP(SSN),
    FOREIGN KEY (PNo) REFERENCES Project(PNo),
    FOREIGN KEY (S_ID) REFERENCES Skill(S_ID)
);


