setup() {
  : ${TEST_SSL_ENABLED:=false}
  : ${TEST_HOST:=localhost}
  : ${TEST_KMS_PORT:=9600}
  : ${TEST_HTTPFS_PORT:=14000}

  : ${HADOOP_HOME:=~/hadoop/hadoop-dist/target/hadoop-3.0.0-alpha2-SNAPSHOT}

  PATH=$HADOOP_HOME/sbin:$HADOOP_HOME/bin:$PATH

  test_env_file=$HADOOP_HOME/etc/hadoop/test_env
  [[ -f $test_env_file ]] && . $test_env_file
}
