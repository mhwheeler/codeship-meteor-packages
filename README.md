codeship-meteor-packages
=========================
###Utilities for running Codeship CI tests on Meteor Packages (tinytest, etc.).

modified from arunoda/travis-ci-meteor-packages to work with codeship

## Instructions
- Create a codeship project for your package's GitHub repository
- Go to **Project Settings > Test Settings**
- Paste the following example commands

###Setup Commands
```shell
# install node
nvm install 0.10.35
nvm use 0.10.35
node -v

# install meteor
curl -o meteor_install_script.sh https://install.meteor.com/
chmod +x meteor_install_script.sh
sed -i "s/type sudo >\/dev\/null 2>&1/\ false /g" meteor_install_script.sh
./meteor_install_script.sh
export PATH=$PATH:~/.meteor/
meteor --version

# install codeship-meteor-packages
curl -L http://git.io/1gisog | /bin/sh

# OPTIONAL, so jshint can be run as part of the tests
npm install jshint -g
```

###Test Pipeline Commands
```shell
# OPTIONAL: run jshint the package. Comment out if not desired.
jshint .

# Run CI tests
node start_test.js

# OPTIONAL: remove test scripts to prepare for deployment.
rm start_test.js phantom_runner.js
```