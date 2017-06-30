load test_helper

@test "httpfs daemonlog" {
  (( HADOOP_VERSION_MAJOR >= 3 )) || skip "Only Hadoop 3 HttpFS supports daemonlog"
  hadoop daemonlog -getlevel $TEST_HTTPFS_HOST:$TEST_HTTPFS_PORT \
    org.apache.hadoop.fs.http.server.HttpFSServer \
    -protocol $TEST_HTTP_SCHEME
}
