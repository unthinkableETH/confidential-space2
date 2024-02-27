#!/bin/bash
#
# Sets required varibles for the codelab.

#Common variables
RANDOM_STRING=$(tr -dc a-z </dev/urandom | head -c 4)

# Primus Bank project related variables
export PRIMUS_PROJECT_REGION=${PRIMUS_PROJECT_REGION:-'us-west1'}
export PRIMUS_PROJECT_ZONE=${PRIMUS_PROJECT_ZONE:-'us-west1-b'}
export PRIMUS_PROJECT_LOCATION=${PRIMUS_PROJECT_LOCATION:-'global'}

# Primus Bank resource related variables
export PRIMUS_COSIGN_REPOSITORY=${PRIMUS_COSIGN_REPOSITORY:-${PRIMUS_PROJECT_ID}-cosign-repo}
export PRIMUS_ENC_KEY=${PRIMUS_ENC_KEY:-${PRIMUS_PROJECT_ID}-enc-key-${RANDOM_STRING}}
export PRIMUS_ENC_KEYRING=${PRIMUS_ENC_KEYRING:-${PRIMUS_PROJECT_ID}-enc-kr}
export PRIMUS_ENC_KEYVERSION=${PRIMUS_ENC_KEYVERSION:-1}
export PRIMUS_INPUT_STORAGE_BUCKET=${PRIMUS_INPUT_STORAGE_BUCKET:-${PRIMUS_PROJECT_ID}-input-bucket}
export PRIMUS_SIGNING_KEY=${PRIMUS_SIGNING_KEY:-${PRIMUS_PROJECT_ID}-signing-key-${RANDOM_STRING}}
export PRIMUS_SIGNING_KEYRING=${PRIMUS_SIGNING_KEYRING:-${PRIMUS_PROJECT_ID}-signing-kr}
export PRIMUS_SIGNING_KEYVERSION=${PRIMUS_SIGNING_KEYVERSION:-1}
export PRIMUS_SERVICEACCOUNT=${PRIMUS_SERVICEACCOUNT:-${PRIMUS_PROJECT_ID}-sa}
export PRIMUS_WIP_PROVIDER=${PRIMUS_WIP_PROVIDER:-${PRIMUS_PROJECT_ID}-wip-provider}
export PRIMUS_WORKLOAD_IDENTITY_POOL=${PRIMUS_WORKLOAD_IDENTITY_POOL:-${PRIMUS_PROJECT_ID}-wip}
export PRIMUS_PROJECT_REPOSITORY_REGION=${PRIMUS_PROJECT_REPOSITORY_REGION:-'us'}

# Secundus Bank project related variables
export SECUNDUS_PROJECT_REGION=${SECUNDUS_PROJECT_REGION:-'us-west1'}
export SECUNDUS_PROJECT_ZONE=${SECUNDUS_PROJECT_ZONE:-'us-west1-b'}
export SECUNDUS_PROJECT_LOCATION=${SECUNDUS_PROJECT_LOCATION:-'global'}

# Secundus Bank resource related variables
export SECUNDUS_ARTIFACT_REPOSITORY=${SECUNDUS_ARTIFACT_REPOSITORY:-${SECUNDUS_PROJECT_ID}-artifact-repo}
export SECUNDUS_PROJECT_REPOSITORY_REGION=${SECUNDUS_PROJECT_REPOSITORY_REGION:-'us'}
export SECUNDUS_RESULT_STORAGE_BUCKET=${SECUNDUS_RESULT_STORAGE_BUCKET:-${SECUNDUS_PROJECT_ID}-result-bucket}

# Workload related variables
export WORKLOAD_SERVICEACCOUNT=${WORKLOAD_SERVICEACCOUNT:-workload-sa}
export WORKLOAD_IMAGE_NAME=${WORKLOAD_IMAGE_NAME:-workload-container}
export WORKLOAD_IMAGE_TAG=${WORKLOAD_IMAGE_TAG:-latest}