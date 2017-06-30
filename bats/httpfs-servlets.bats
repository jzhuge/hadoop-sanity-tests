load test_helper
load test_servlet

@test "httpfs servlet /jmx" {
  (( HADOOP_VERSION_MAJOR >= 3 )) || skip "Only Hadoop 3 HttpFS supports servlet /jmx"
  test_servlet jmx $TEST_HTTP_SCHEME $TEST_HTTPFS_HOST $TEST_HTTPFS_PORT
}

@test "httpfs servlet /conf" {
  (( HADOOP_VERSION_MAJOR >= 3 )) || skip "Only Hadoop 3 HttpFS supports servlet /conf"
  test_servlet conf $TEST_HTTP_SCHEME $TEST_HTTPFS_HOST $TEST_HTTPFS_PORT
}

@test "httpfs servlet /logLevel" {
  (( HADOOP_VERSION_MAJOR >= 3 )) || skip "Only Hadoop 3 HttpFS supports servlet /logLevel"
  test_servlet logLevel $TEST_HTTP_SCHEME $TEST_HTTPFS_HOST $TEST_HTTPFS_PORT
}

@test "httpfs servlet /logs" {
  (( HADOOP_VERSION_MAJOR >= 3 )) || skip "Only Hadoop 3 HttpFS supports servlet /logs"
  test_servlet logs $TEST_HTTP_SCHEME $TEST_HTTPFS_HOST $TEST_HTTPFS_PORT
}

@test "httpfs servlet /stacks" {
  (( HADOOP_VERSION_MAJOR >= 3 )) || skip "Only Hadoop 3 HttpFS supports servlet /stacks"
  test_servlet stacks $TEST_HTTP_SCHEME $TEST_HTTPFS_HOST $TEST_HTTPFS_PORT
}
