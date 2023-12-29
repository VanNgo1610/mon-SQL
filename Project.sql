--Tạo bảng Employee
CREATE TABLE Employee(
EmployeeID INT PRIMARY KEY,
EmployeeName NVARCHAR(100),
Telephone CHAR(11),
EmailAddress VARCHAR(30),
)

INSERT INTO Employee VALUES (1, 'Ngo', '0123456789', 'vanthngo.csp@gmail.com')
INSERT INTO Employee VALUES (2, 'Thuy', '0123456789', 'vanthngo.csp@gmail.com')
INSERT INTO Employee VALUES (3, 'Van', '0123456789', 'vanthngo.csp@gmail.com')

DROP TABLE Employee;

SELECT * FROM Employee;

CREATE TABLE EmployeeGroup(
GroupID INT PRIMARY KEY,
GroupName VARCHAR(30),
LeaderID INT,
ProjectID INT,
)

INSERT INTO EmployeeGroup VALUES (01, 'FPT', 2, 987)
INSERT INTO EmployeeGroup VALUES (02, 'Aptech', 3, 876)
INSERT INTO EmployeeGroup VALUES (03, 'FPTA', 1, 765)

DROP TABLE EmployeeGroup;

SELECT * FROM EmployeeGroup;

CREATE TABLE Project(
ProjectID INT PRIMARY KEY,
ProjectName VARCHAR(30),
StartDate DATETIME,
EndDate DATETIME,
Reriod INT,
Cost MONEY,
)

INSERT INTO Project VALUES (001, 'Lab1', '2023-1-3', '2023-6-6', 5, 400)
INSERT INTO Project VALUES (002, 'Lab2', '2023-2-4', '2023-9-14', 7, 600)
INSERT INTO Project VALUES (003, 'Lab3', '2023-3-5', '2023-7-20', 4, 350 )

CREATE TABLE GroupDetail(
	GroupID  INT,
	EmployeeID INT ,
	Status CHAR(20),
	PRIMARY KEY (GroupID, EmployeeID),
	FOREIGN KEY (GroupID ) REFERENCES  Groups (GroupID ),
	FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
);

INSERT INTO GroupDetail VALUES (123, 1, 'hoan thanh'),
INSERT INTO GroupDetail VALUES (234, 2, 'hoan thanh'),
INSERT INTO GroupDetail VALUES (345, 3, 'hoan thanh');


SELECT * FROM Employee;
SELECT * FROM Groups;
SELECT * FROM Project;
SELECT * FROM GroupDetail;

SELECT E.*  FROM Employee AS E, Project AS P, Groups AS G, GroupDetail AS GD
WHERE GD.GroupID = G.GroupID
AND E.EmployeeID = GD.EmployeeID
AND G.ProjectID = P.ProjectID
AND P.ProjectName = 'msa'


SELECT G.GroupName, COUNT(gd.EmployeeID) AS EmployeeCount
FROM Groups G
LEFT JOIN GroupDetail gd ON G.GroupID = GD.GroupID
GROUP BY G.GroupName

SELECT E.* FROM Employee E
JOIN Groups G ON E.EmployeeID = G.LeaderID;


ALTER TABLE Employee
ALTER COLUMN Name NVARCHAR(100) NOT NULL;
