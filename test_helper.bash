init_envs() {
  : ${TEST_HOST:=localhost}
  : ${TEST_HTTPFS_PORT:=14000}
  : ${TEST_HTTPFS_SCHEME:=webhdfs}
  : ${TEST_KMS_PORT:=9600}
}

setup() {
  init_envs
}
