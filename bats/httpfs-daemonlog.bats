load test_helper

@test "httpfs daemonlog" {
  hadoop daemonlog -getlevel $TEST_HTTPFS_HOST:$TEST_HTTPFS_PORT \
    org.apache.hadoop.fs.http.server.HttpFSServer \
    -protocol $TEST_HTTP_SCHEME
}
