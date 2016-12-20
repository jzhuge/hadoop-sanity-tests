load test_helper

@test "httpfs ls" {
  httpfs_scheme=webhdfs
  [[ $HTTPFS_SSL_ENABLED == true ]] && httpfs_scheme=swebhdfs
  hdfs dfs -ls $httpfs_scheme://$TEST_HOST:$TEST_HTTPFS_PORT/
}
