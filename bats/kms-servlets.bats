load test_helper
load test_servlet

@test "kms servlet /kms/jmx" {
  test_servlet kms/jmx $TEST_HTTP_SCHEME $TEST_KMS_HOST $TEST_KMS_PORT
}

@test "kms servlet /jmx" {
  test_servlet jmx $TEST_HTTP_SCHEME $TEST_KMS_HOST $TEST_KMS_PORT
}

@test "kms servlet /conf" {
  test_servlet conf $TEST_HTTP_SCHEME $TEST_KMS_HOST $TEST_KMS_PORT
}

@test "kms servlet /logLevel" {
  test_servlet logLevel $TEST_HTTP_SCHEME $TEST_KMS_HOST $TEST_KMS_PORT
}

@test "kms servlet /logs" {
  test_servlet logs $TEST_HTTP_SCHEME $TEST_KMS_HOST $TEST_KMS_PORT
}

@test "kms servlet /stacks" {
  test_servlet stacks $TEST_HTTP_SCHEME $TEST_KMS_HOST $TEST_KMS_PORT
}
