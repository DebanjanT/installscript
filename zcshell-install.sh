#!bin/bash

echo Node Version 
node -v

echo npm Version
npm -v

echo yarn Version
yarn -v


git clone https://github.com/DebanjanT/zcshell.git zcshell

cd zcshell

# read user input for server port then set it into a variable
echo "Enter your server port"

read port

# create .env
echo "PORT=$port" > .env

# read user input for linux user name then set it into a variable
echo "Enter your linux user name"

read username

echo "USER_SERVER_DIR=/home/$username/" >> .env

# install dependencies
yarn install

# run server 
pm2 start "yarn dev" --name zcshell








