#!/bin/sh

#configuring the system
wget https://raw.github.com/mhwheeler/codeship-meteor-packages/master/start_test.js
wget https://raw.github.com/mhwheeler/codeship-meteor-packages/master/phantom_runner.js

# run tests (DO THIS IN YOUR CODESHIP TEST SETTINGS)
# node start_test.js

# cleanup (DO THIS IN YOUR CODESHIP TEST SETTINGS)
# rm start_test.js phantom_runner.js
