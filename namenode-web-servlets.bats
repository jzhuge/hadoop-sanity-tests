load test_helper
load test-servlets

@test "namenode web servlets" {
  test_servlets $TEST_HTTP_SCHEME $TEST_NN_HOST $TEST_NN_WEB_PORT
}
