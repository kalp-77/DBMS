DECLARE 
roll_number number;
name1 varchar(20);
dateofissue date;
System_date date;
noOfDays number(20);
amnt number;
BEGIN
roll_number:=:roll_number;
name1:=:name1;
select Sysdate into System_date from dual;
select doi into dateofissue from borrower where rollno=roll_number and nameOfBook=name1;
dbms_output.put_line(dateofissue);
noOfDays:=System_date - dateofissue;
dbms_output.put_line(noOfDays);
if noOfDays>15 and noOfdays<30 then
amnt:=noOfdays*5;
dbms_output.put_line('Fine: ' ||amnt);
elsif noOfdays>30 then
amnt:=noOfdays*50;
dbms_output.put_line('Fine: ' ||amnt);
else
dbms_output.put_line('No fine');
END IF;
IF noOfDays>15 THEN
INSERT INTO fines values(roll_number,Sysdate,amnt);
UPDATE borrower set status ='r' where rollno=roll_number;
END if;
exception
when no_data_found then
dbms_output.put_line(roll_number||' Not Found');

END;
/
