## Install the final productions

### Linux user

1. install docker-composer

    ```bash
    sudo apt-get update && sudo apt-get install -y vim python-pip curl git
    pip docker-compose
    ```

2. install  Docker 
 
    ```
    sudo curl -sSL get.docker.com | sh
    
    sudo apt-get install -y docker-compose
   ``` 
    Read more about doc: [https://docs.docker.com/install/](https://docs.docker.com/install/)

3. Clone and pull for development

    ```
    git clone -b 2.0 https://github.com/samreachyan/OnlineJudgeDeploy.git && cd OnlineJudgeDeploy
    ```

4. Deploy in locally 

    ```
    sudo docker-compose up -d
    ```
    > If you cannot login to admin, try `sudo -E docker-compose up -d`
    Note: 
    ```
    admin: root
    pass: rootroot
    ```
    > If you using `Apache2` you need to stop `Apache2` server, try : `sudo systemctl service stop apache2`

5. For special Command line by Bash Terminal
    ```
    sudo bash oj.sh
    ```
### Windows User

For windows user, you need to install Python, pip, git, docker-compose and set all environment. Just watch the video on youtube for installation environments.

And then installation, you just clone the project and start the docker compose. It'll work normally.

## Check for healthy

1. See all container running
    ```
    sudo docker ps -a
    ```

2. View on local environment
    ```
    ifconfig
    ```
    or windows
    ```
    ipconfig
    ```

    see the ip address are working.
## Documents

More documents: [http://opensource.qduoj.com/](http://opensource.qduoj.com/)
