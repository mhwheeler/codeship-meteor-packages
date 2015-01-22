#!/bin/sh

#configuring the system
wget https://raw.github.com/oafmedium/codeship-meteor-packages/master/start_test.js
wget https://raw.github.com/oafmedium/codeship-meteor-packages/master/phantom_runner.js

node start_test.js
