load test_helper
load test_servlet

@test "namenode web servlet /jmx" {
  test_servlet jmx $TEST_HTTP_SCHEME $TEST_NN_HOST $TEST_NN_WEB_PORT
}

@test "namenode web servlet /conf" {
  test_servlet conf $TEST_HTTP_SCHEME $TEST_NN_HOST $TEST_NN_WEB_PORT
}

@test "namenode web servlet /logLevel" {
  test_servlet logLevel $TEST_HTTP_SCHEME $TEST_NN_HOST $TEST_NN_WEB_PORT
}

@test "namenode web servlet /logs" {
  test_servlet logs $TEST_HTTP_SCHEME $TEST_NN_HOST $TEST_NN_WEB_PORT
}

@test "namenode web servlet /stacks" {
  test_servlet stacks $TEST_HTTP_SCHEME $TEST_NN_HOST $TEST_NN_WEB_PORT
}
