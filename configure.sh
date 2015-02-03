#!/bin/sh

#configuring the system
wget https://raw.github.com/oafmedium/codeship-meteor-packages/master/start_test.js
wget https://raw.github.com/oafmedium/codeship-meteor-packages/master/phantom_runner.js

# run tests
node start_test.js

# cleanup
rm start_test.js phantom_runner.js
