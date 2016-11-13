#!/bin/bash

sed 's/localhost/$HOST/' /sendd/public/javascripts/index-localhost.js > /sendd/public/javascripts/index.js

cd /sendd

ln -s /usr/bin/nodejs /usr/bin/node 

npm install
npm start
