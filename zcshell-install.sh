#!bin/bash

echo Node Version 
node -v

echo npm Version
npm -v

echo yarn Version
yarn -v


git clone https://github.com/DebanjanT/zcshell.git zcshell

cd zcshell

# create .env
echo "PORT=9293" > .env


echo "USER_SERVER_DIR=/home/<username>/" >> .env

# install dependencies
yarn install

# run server 
pm2 start "yarn dev" --name zcshell








