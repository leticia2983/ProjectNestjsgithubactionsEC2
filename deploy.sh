#!/bin/bash

cd /home/ubuntu/nestjs-hello-world

git pull origin main

npm install

npm run build

pm2 restart all || pm2 start dist/main.js --name "nestjs-hello-world"
