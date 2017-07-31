load test_helper

@test "webhdfs rest liststatus" {
  [[ $TEST_KERBEROS_ENABLED != yes ]] && user_param="user.name=$USER"
  curl -f -k --negotiate -u: -sS "$TEST_HTTP_SCHEME://$TEST_NN_HOST:$TEST_NN_WEB_PORT/webhdfs/v1/?op=LISTSTATUS&$user_param"
}

@test "webhdfs ls" {
  [[ $TEST_KERBEROS_ENABLED != yes ]] && user_param="user.name=$USER"
  hdfs dfs -ls $TEST_WEBHDFS_SCHEME://$TEST_NN_HOST:$TEST_NN_WEB_PORT/
}
