#!/usr/bin/env sh

npm install
npm install -g forever
NODE_ENV=production forever --minUptime 10000 --spinSleepTime 5000 -m 100 app.js
