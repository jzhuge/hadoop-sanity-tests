load test_helper

@test "httpfs ls" {
  [[ $TEST_KERBEROS_ENABLED != yes ]] && user_param="user.name=$USER"
  curl -f -k --negotiate -u: -sS "$TEST_HTTP_SCHEME://$TEST_HTTPFS_HOST:$TEST_HTTPFS_PORT/webhdfs/v1?op=LISTSTATUS&$user_param"
}
