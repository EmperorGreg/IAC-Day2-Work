#!/bin/bash
sudo apt update
sudo apt install nodejs -y
sudo apt install npm -y
touch test.js
cat <<EOT > test.js
var http = require('http');
var url = require('url');

http.createServer(function (req, res) {
  res.write("Hello George!");
  res.end();
}).listen(80);
EOT
touch package.json
cat <<EOT > package.json
 {
  "name": "vagrant",
  "version": "1.0.0",
  "description": "",
  "main": "test.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
    "start"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}
EOT
npm install -g npm
npm init --yes
node test.js