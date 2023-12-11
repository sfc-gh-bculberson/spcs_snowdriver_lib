CREATE DATABASE IF NOT EXISTS SPCS_SNOWDRIVER_LIB;
CREATE SCHEMA IF NOT EXISTS PYTHON;

CREATE IMAGE REPOSITORY IF NOT EXISTS REPO;

CREATE COMPUTE POOL IF NOT EXISTS SPCS_SNOWSRIVER_LIB_PYTHON
  MIN_NODES=1
  MAX_NODES=1
  INSTANCE_FAMILY=STANDARD_1;

EXECUTE SERVICE
IN COMPUTE POOL SPCS_SNOWSRIVER_LIB_PYTHON
FROM SPECIFICATION $$
spec:
  containers:
  - name: python
    image: /spcs_snowdriver_lib/python/repo/connection_test_python:v0.1
    command:
    - bash
    args:
    - -c
    - ". connector/bin/activate;python connection_test.py"
$$;

SET JOB_ID = LAST_QUERY_ID();

CALL SYSTEM$GET_JOB_LOGS($JOB_ID, 'python');
