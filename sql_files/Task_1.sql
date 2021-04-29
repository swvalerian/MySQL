Create table Person1 (PersonId int, FirstName varchar(255), LastName varchar(255));
Create table Address (AddressId int, PersonId int, City varchar(255), State varchar(255));
Truncate table Person;
insert into Person1 (PersonId, LastName, FirstName) values ('1', 'Wang', 'Allen');
Truncate table Address;
insert into Address (AddressId, PersonId, City, State) values ('1', '2', 'New York City', 'New York');

-- Write a SQL query for a report that provides the following information for each person 
-- in the Person table, regardless if there is an address for each of those people:
-- FirstName, LastName, City, State

-- +-----------+----------+------+-------+
-- | firstname | lastname | city | state |
-- +-----------+----------+------+-------+
-- | Allen     | Wang     | NULL | NULL  |
-- +-----------+----------+------+-------+

-- Реализазия запроса
select firstname, lastname, city, state
from person1
left join address
on person1.personid = address.personid;
