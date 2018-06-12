#!/bin/bash

rm -rf edx.config-casatibet

git clone https://github.com/atentamente/edx.config-casatibet.git
chown edxapp -R edx.config-casatibet
chgrp edxapp -R edx.config-casatibet

cp /home/ubuntu/edx.config-casatibet/conf/lms.env.json /edx/app/edxapp/lms.env.json
cp /home/ubuntu/edx.config-casatibet/conf/lms.auth.json /edx/app/edxapp/lms.auth.json
cp /home/ubuntu/edx.config-casatibet/conf/cms.env.json /edx/app/edxapp/cms.env.json
cp /home/ubuntu/edx.config-casatibet/conf/cms.auth.json /edx/app/edxapp/cms.auth.json

chmod 644 /edx/app/edxapp/*.env.json
chmod 755 /edx/app/edxapp/*.auth.json
