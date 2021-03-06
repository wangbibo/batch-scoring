#!/bin/bash
# Usage: invoked my "make pyinstaller_dockerized"
# it is meant to run inside a docker container where it sets up the environment
# it then calls the "make pyinstaller" build command

HUID=`ls -nd /batch-scoring | cut --delimiter=' ' -f 3`
useradd -m -s /bin/bash -u $HUID user 
su user -c -l "/batch-scoring/offline_install_scripts/test_pyinstaller.sh"

