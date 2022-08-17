mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| Emp                |
| Flats              |
| Home               |
| Madhuri            |
| Project            |
| TE                 |
| UVM                |
| adishridb1         |
| amazon             |
| ekart              |
| hospital           |
| information_schema |
| movies             |
| mysql              |
| newstd             |
| performance_schema |
| phones             |
| shows              |
| student1           |
| sys                |
| theatre            |
| time               |
+--------------------+
22 rows in set (0.00 sec)

mysql> create database Employee;
Query OK, 1 row affected (0.03 sec)

mysql> use Employee;
Database changed

mysql> insert into Emp_details values(1,"kalp", 25000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into Emp_details values(2,"Aman",35000);
Query OK, 1 row affected (0.03 sec)

mysql> select * From Emp_details;
+------+------+--------+
| Id   | name | salary |
+------+------+--------+
|    1 | kalp |  25000 |
|    2 | Aman |  35000 |
+------+------+--------+
2 rows in set (0.00 sec)


mysql> select Id,name from Emp_details;
+------+------+
| Id   | name |
+------+------+
|    1 | kalp |
|    2 | Aman |
+------+------+
2 rows in set (0.00 sec)

mysql> select * from Emp_details where name = "kalp";
+------+------+--------+
| Id   | name | salary |
+------+------+--------+
|    1 | kalp |  25000 |
+------+------+--------+
1 row in set (0.00 sec)

mysql> alter table Emp_details add column city varchar(25);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> update Emp_details set city="kolhapur" where name = "kalp";
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update Emp_details set city="varanasi" where name = "Aman";
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from Emp_details;
+------+------+--------+----------+
| Id   | name | salary | city     |
+------+------+--------+----------+
|    1 | kalp |  25000 | kolhapur |
|    2 | Aman |  35000 | varanasi |
+------+------+--------+----------+
2 rows in set (0.00 sec)

mysql> alter table Emp_details drop city;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from Emp_details;
+------+------+--------+
| Id   | name | salary |
+------+------+--------+
|    1 | kalp |  25000 |
|    2 | Aman |  35000 |
+------+------+--------+
2 rows in set (0.01 sec)

mysql> delete from Emp_details where name = "Aman";
Query OK, 1 row affected (0.03 sec)

mysql> select * from Emp_details;
+------+------+--------+
| Id   | name | salary |
+------+------+--------+
|    1 | kalp |  25000 |
+------+------+--------+
1 row in set (0.01 sec)


mysql> delete from Emp_details;
Query OK, 1 row affected (0.04 sec)

