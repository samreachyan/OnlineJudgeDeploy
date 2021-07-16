# export db
docker exec -it oj-postgres pg_dumpall -c -U onlinejudge > db_backup_`date +%Y_%m_%d"_"%H_%M_%S`.sql


# ---------------- import data 
#copy db_backup.sql to docker 
# $ sudo docker cp db_backup.sql <containerID>:/home

# $ docker exec -it oj-postgres bash

# Import into data
# $ psql -d onlinejudge -U onlinejudge -f /home/db_backup.sql
# $ psql -d <db_name> -U <db_username> -f <directory/db.sql> 