load test_helper

@test "httpfs ls" {
  hdfs dfs -ls $TEST_HTTPFS_SCHEME://$TEST_HOST:$TEST_HTTPFS_PORT/
}
