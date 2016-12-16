load test_helper

@test "hadoop list key" {
  hadoop key list
}

@test "hadoop create key" {
  hadoop key delete key1 -f || true
  hadoop key create key1
}

@test "hadoop roll key" {
  hadoop key roll key1
}

@test "hadoop delete key" {
  hadoop key delete key1 -f
}

@test "kms daemonlog" {
  if [[ $TEST_SSL_ENABLED == false ]]; then
    hadoop daemonlog -getlevel $TEST_HOST:$TEST_KMS_PORT \
      org.apache.hadoop.crypto.key.kms.server.KMS
  fi
}
