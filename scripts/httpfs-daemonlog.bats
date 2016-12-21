load test_helper

@test "httpfs daemonlog" {
  [[ $TEST_DAEMONLOG == true ]] || skip
  hadoop daemonlog -getlevel $TEST_HOST:$TEST_HTTPFS_PORT \
    org.apache.hadoop.fs.http.server.HttpFSServer
}
