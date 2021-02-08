#!/bin/bash

set -x -e

# deploy the security policy session of the python app to CAS
./gen_policy.sh
./submit_policy.sh

# clean output volume
rm -rf /demo/encrypted_volume/
mkdir /demo/encrypted_volume/

# execute the python app with the deployed security session
SCONE_VERSION=7 SCONE_CONFIG_ID=volume_policy/volume_service python
