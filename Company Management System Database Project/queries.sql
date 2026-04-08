/*
( SQL queries ) :
*/

/*
   1️⃣ Show All Employees
   
  */

  SELECT * 
FROM EMP;

/*

 2️⃣ Show Employee Names and Salaries

*/
SELECT Name, Salary
FROM EMP;

/*
3️⃣ Employees With Salary Greater Than 7000
*/
SELECT Name, Salary
FROM EMP
WHERE Salary > 7000;

/*
4️⃣ Employees Who Work in IT Department
*/
SELECT Name
FROM EMP
WHERE DNo = 1;

/*
5️⃣ Employees With Their Department Names (JOIN)
*/
SELECT E.Name, D.DName
FROM EMP E
JOIN Dept D
ON E.DNo = D.DNo;
/*

6️⃣ Show Employees and Their Phone Numbers
*/

SELECT E.Name, P.Phone
FROM EMP E
JOIN EMP_PHONE P
ON E.SSN = P.SSN;

/*
7️⃣ Employees Working on Projects
*/

SELECT E.Name, P.PName
FROM EMP E
JOIN Work_On W ON E.SSN = W.SSN
JOIN Project P ON W.PNo = P.PNo;


/*
8️⃣ Show Employee Skills
*/

SELECT E.Name, S.SkillName
FROM EMP E
JOIN Skills_Used SU ON E.SSN = SU.SSN
JOIN Skill S ON SU.S_ID = S.S_ID;

/*
9️⃣ Total Hours Each Employee Worked
*/

SELECT E.Name, SUM(W.Hours) AS TotalHours
FROM EMP E
JOIN Work_On W ON E.SSN = W.SSN
GROUP BY E.Name;
/*
🔟 Count Employees in Each Department
*/

SELECT D.DName, COUNT(E.SSN) AS NumEmployees
FROM Dept D
LEFT JOIN EMP E
ON D.DNo = E.DNo
GROUP BY D.DName;
/*
11- Highest Salary
*/

SELECT MAX(Salary) AS HighestSalary
FROM EMP;

/*
12- Employee With Highest Salary
*/


SELECT Name, Salary
FROM EMP
WHERE Salary = (SELECT MAX(Salary) FROM EMP);





