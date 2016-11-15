#!/bin/bash

sed -i "s/localhost/$HOST/" /sendd/public/javascripts/index.js
sed -i "s/9000/$PEERJSPORT/" /sendd/public/javascripts/index.js
sed -i "s/9000/$PEERJSPORT/" /sendd/routes/index.js

cd /sendd

ln -s /usr/bin/nodejs /usr/bin/node 

npm install
PORT=$HTTPPORT npm start
