load test_helper
load test-servlets

@test "kms servlets" {
  test_servlets $TEST_HTTP_SCHEME $TEST_KMS_HOST $TEST_KMS_PORT
}
