#!/bin/bash
cd /home/ubuntu/
mkdir "nestjs-hello-world"
cd /home/ubuntu/nestjs-hello-world
git clone "https://github.com/nestjs/typescript-starter.git"
git pull origin main

npm install

npm run build

pm2 restart all || pm2 start dist/main.js --name "nestjs-hello-world"
