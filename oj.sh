#!/bin/bash

echo "########################################################"
echo "#                                                      #"
echo "#                                                      #"
echo "#                   Sak Code Online                    #" 
echo "#                                                      #"
echo "#             Command system by: Samreach              #"
echo "#                                                      #"
echo "#                                                      #"
echo "########################################################"
echo ""
echo ""
echo "1.Start docker development"
echo "2.View docker running"
echo "3.Pulling docker and running"
echo "4.Backup Data"
echo "5.Import test_case"
echo "6.Restart docker-composer"
echo "7.Stop docker-composer"
read -p "[ * ] Your options : " num
if [ "$num" == "1" ]
    then
    echo "[ + ] Starting development docker composer..."
    docker-compose up -d
    read -s -p "[ + ] Docker is running..." continue
    reset
    ./oj.sh
elif [ "$num" == "2" ]
    then
    echo "Currently docker :"
    docker ps -a
    read -s -p "[ + ] View running docker..." continue
    reset
    ./oj.sh
elif [ "$num" == "3" ]
    then
    echo "[ + ] Pulling docker..."
    git pull
    docker-compose pull && docker-compose up -d
    read -s -p "[ + ] Docker running..." continue
    reset
    ./oj.sh
elif [ "$num" == "4" ]
    then
    cp -r data data_bak
    read -s -p "[ + ] Copying data, backed up..." continue
    reset
    ./oj.sh
elif [ "$num" == "5" ]
    then
    echo "[ + ] Importing test_case data /home/OnlineJudgeDeploy/data/backend/test_case  "
    echo "[ + ] Importing to docker..." 
    docker cp old_data.json oj-backend:/app/utils/
    docker exec -it oj-backend /bin/sh
    cd ./utils
    python3 migrate_data.py old_data.json
    read -s -p "[ + ] Imported to docker successfull" continue
    reset
    ./oj.sh
elif [ "$num" == "6" ]
    then
    echo "[ + ] Restarting docker composer..."
    docker-compose restart
    read -s -p "[ + ] Restarted docker composer" continue
    reset
    ./oj.sh
elif [ "$num" == "7" ]
    then
    docker-compose stop
    read -s -p "[ + ] Stop docker composer success" continue
    reset
    ./oj.sh
fi
