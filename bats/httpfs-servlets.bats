load test_helper
load test_servlet

@test "httpfs servlet /kms/jmx" {
  test_servlet kms/jmx $TEST_HTTP_SCHEME $TEST_HTTPFS_HOST $TEST_HTTPFS_PORT
}

@test "httpfs servlet /jmx" {
  test_servlet jmx $TEST_HTTP_SCHEME $TEST_HTTPFS_HOST $TEST_HTTPFS_PORT
}

@test "httpfs servlet /conf" {
  test_servlet conf $TEST_HTTP_SCHEME $TEST_HTTPFS_HOST $TEST_HTTPFS_PORT
}

@test "httpfs servlet /logLevel" {
  test_servlet logLevel $TEST_HTTP_SCHEME $TEST_HTTPFS_HOST $TEST_HTTPFS_PORT
}

@test "httpfs servlet /logs" {
  test_servlet logs $TEST_HTTP_SCHEME $TEST_HTTPFS_HOST $TEST_HTTPFS_PORT
}

@test "httpfs servlet /stacks" {
  test_servlet stacks $TEST_HTTP_SCHEME $TEST_HTTPFS_HOST $TEST_HTTPFS_PORT
}
