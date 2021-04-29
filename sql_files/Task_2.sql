Create table If Not Exists Employee2 (Id int, Salary int);
Truncate table Employee2;
insert into Employee2 (Id, Salary) values ('1', '100');
insert into Employee2 (Id, Salary) values ('2', '200');
insert into Employee2 (Id, Salary) values ('3', '300');

-- Write a SQL query to get the second highest salary from the Employee table.
-- +----+--------+
-- | Id | Salary |
-- +----+--------+
-- | 1  | 100    |
-- | 2  | 200    |
-- | 3  | 300    |
-- +----+--------+

-- For example, given the above Employee table, the query should return 200 as the 
-- second highest salary. If there is no second highest salary, then the query should 
-- return null.
-- +---------------------+
-- | SecondHighestSalary |
-- +---------------------+
-- | 200                 |
-- +---------------------+

-- Реализация запроса
select max(salary) from employee2
where salary < (select max(salary) from Employee2);