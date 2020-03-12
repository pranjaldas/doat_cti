create database jpa_example; -- Creates the  database
create user 'jcguser'@'%' identified by 'mypassword'; -- Creates the user
grant all on jpa_example.* to 'jcguser'@'%'; -- Grants all privileges to the new user on the database