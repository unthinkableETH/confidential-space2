#!/bin/bash
#
# Creates workload service-account.

source config_env.sh
source common.sh
source create_workload_service_account.sh

set_gcp_project "${WEB3DATA_PROJECT_ID}"

echo "Creating workload service-account ${WEB3DATA_WORKLOAD_SERVICE_ACCOUNT} under project ${WEB3DATA_PROJECT_ID}..."
create_service_account "${WEB3DATA_WORKLOAD_SERVICE_ACCOUNT}"
grant_service_account_user_role_to_workload_operator "${WEB3DATA_WORKLOAD_SERVICE_ACCOUNT}" "${WEB3DATA_PROJECT_ID}"
grant_workload_user_role_to_service_account "${WEB3DATA_WORKLOAD_SERVICE_ACCOUNT}" "${WEB3DATA_PROJECT_ID}"
grant_log_writer_role_to_service_account "${WEB3DATA_WORKLOAD_SERVICE_ACCOUNT}" "${WEB3DATA_PROJECT_ID}"
