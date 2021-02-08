#!/bin/bash

set -x -e

CAS_ADDR=cas
# get MRENCLAVE of CAS by running: docker-compose run -eSCONE_HASH=1 cas
CAS_MRENCLAVE="663ddae4f0036a39c18a533d97f7a5ba0850f2efb0147d63afa459a20315a7e1"

echo "Attesting CAS ..."
scone cas attest -G --only_for_testing-debug --only_for_testing-ignore-signer "$CAS_ADDR" "$CAS_MRENCLAVE"

echo "Uploading policy to CAS ..."
scone session create --use-env "session.yml"
echo ""
