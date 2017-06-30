load test_helper
load test_servlet

@test "kms servlet /kms/jmx" {
  (( HADOOP_VERSION_MAJOR == 2 )) || skip "Only Hadoop 2 KMS supports servlet /kms/jmx"
  test_servlet kms/jmx $TEST_HTTP_SCHEME $TEST_KMS_HOST $TEST_KMS_PORT
}

@test "kms servlet /jmx" {
  (( HADOOP_VERSION_MAJOR >= 3 )) || skip "Only Hadoop 3 KMS supports servlet /jmx"
  test_servlet jmx $TEST_HTTP_SCHEME $TEST_KMS_HOST $TEST_KMS_PORT
}

@test "kms servlet /conf" {
  (( HADOOP_VERSION_MAJOR >= 3 )) || skip "Only Hadoop 3 KMS supports servlet /conf"
  test_servlet conf $TEST_HTTP_SCHEME $TEST_KMS_HOST $TEST_KMS_PORT
}

@test "kms servlet /logLevel" {
  (( HADOOP_VERSION_MAJOR >= 3 )) || skip "Only Hadoop 3 KMS supports servlet /logLevel"
  test_servlet logLevel $TEST_HTTP_SCHEME $TEST_KMS_HOST $TEST_KMS_PORT
}

@test "kms servlet /logs" {
  (( HADOOP_VERSION_MAJOR >= 3 )) || skip "Only Hadoop 3 KMS supports servlet /logs"
  test_servlet logs $TEST_HTTP_SCHEME $TEST_KMS_HOST $TEST_KMS_PORT
}

@test "kms servlet /stacks" {
  (( HADOOP_VERSION_MAJOR >= 3 )) || skip "Only Hadoop 3 KMS supports servlet /stacks"
  test_servlet stacks $TEST_HTTP_SCHEME $TEST_KMS_HOST $TEST_KMS_PORT
}
