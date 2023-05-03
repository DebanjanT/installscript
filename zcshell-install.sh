#!bin/bash

echo Node Version 
node -v

echo npm Version
npm -v

git clone https://github.com/DebanjanT/zcshell.git zcshell
cd zcshell

# create .env
echo "PORT=9293" > .env

# install dependencies
yarn install

# run server
yarn dev








