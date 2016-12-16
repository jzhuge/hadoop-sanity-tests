load test_helper

@test "httpfs ls" {
  hdfs dfs -mkdir -p /tmp
  hdfs dfs -ls /

  httpfs_scheme=webhdfs
  [[ $TEST_SSL_ENABLED == true ]] && httpfs_scheme=swebhdfs
  hdfs dfs -ls $httpfs_scheme://$TEST_HOST:$TEST_HTTPFS_PORT/
}

@test "httpfs daemonlog" {
  if [[ $TEST_SSL_ENABLED == false ]]; then
    hadoop daemonlog -getlevel $TEST_HOST:$TEST_HTTPFS_PORT \
      org.apache.hadoop.fs.http.server.HttpFSServer
  fi
}
