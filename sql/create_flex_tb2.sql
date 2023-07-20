BEGIN
   EXECUTE IMMEDIATE 'drop table sysadm.flex_tb2';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/
create table sysadm.flex_tb2 (c1 varchar2(5 char));
