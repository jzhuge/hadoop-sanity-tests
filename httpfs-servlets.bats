load test_helper
load test-servlets

@test "httpfs servlets" {
  test_servlets $TEST_HTTP_SCHEME $TEST_HTTPFS_HOST $TEST_HTTPFS_PORT
}
