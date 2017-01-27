init_envs() {
  : ${TEST_HOST:=localhost}
  : ${TEST_HTTPFS_PORT:=14000}
  : ${TEST_KMS_PORT:=9600}
  : ${TEST_SSL_ENABLED:=no}

  if [[ $TEST_SSL_ENABLED == yes ]]; then
    : ${TEST_DAEMONLOG_PROTO:=https}
    : ${TEST_HTTPFS_SCHEME:=swebhdfs}
  else
    : ${TEST_DAEMONLOG_PROTO:=http}
    : ${TEST_HTTPFS_SCHEME:=webhdfs}
  fi
}

setup() {
  init_envs
}
