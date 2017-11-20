rem new db
rem psql -U postgres -c "CREATE DATABASE testing;"
psql -U postgres -c "SET CLIENT_ENCODING TO 'utf8'" -f create/database.sql
rem roles
psql -U postgres -d testing -c "SET CLIENT_ENCODING TO 'utf8'" -f temp/create.sql
rem DDL: END!
Pause