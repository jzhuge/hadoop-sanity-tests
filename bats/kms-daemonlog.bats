load test_helper

@test "kms daemonlog" {
  (( HADOOP_VERSION_MAJOR >= 3 )) || skip "Only Hadoop 3 KMS supports daemonlog"
  hadoop daemonlog -getlevel $TEST_KMS_HOST:$TEST_KMS_PORT \
    org.apache.hadoop.crypto.key.kms.server.KMS \
    -protocol $TEST_HTTP_SCHEME
}
