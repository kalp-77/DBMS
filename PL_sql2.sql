DECLARE
roll_no int;
book_name varchar(50);

doi date;
System_date date;

no_of_days int(20);
BEGIN
roll_no := :roll_no;
book_name := :book_name;
     select Sysdate into System_date from dual;
     select DateofIssue into doi from burrower_table where Roll_no=roll_no and NameofBook=book_name;
     
     
     no_of_days:=System_date-doi;

dbms_output.put_line(no_of_days);

END;
/
