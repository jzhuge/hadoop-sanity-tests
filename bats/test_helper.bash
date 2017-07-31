init_envs() {
  : ${TEST_HOST:=localhost}
  : ${TEST_HTTPFS_HOST:=$TEST_HOST}
  : ${TEST_HTTPFS_PORT:=14000}
  : ${TEST_KMS_HOST:=$TEST_HOST}
  : ${TEST_KMS_PORT:=9600}
  : ${TEST_NN_HOST:=$TEST_HOST}
  : ${TEST_SSL_ENABLED:=no}

  if [[ $TEST_SSL_ENABLED == yes ]]; then
    : ${TEST_HTTP_SCHEME:=https}
    : ${TEST_WEBHDFS_SCHEME:=swebhdfs}
    : ${TEST_NN_WEB_PORT:=9871}
  else
    : ${TEST_HTTP_SCHEME:=http}
    : ${TEST_WEBHDFS_SCHEME:=webhdfs}
    : ${TEST_NN_WEB_PORT:=9870}
  fi

  if [[ -z $HADOOP_VERSION_MAJOR ]]; then
    if [[ -z $HADOOP_VERSION ]]; then
      export HADOOP_VERSION=$(hadoop version | sed -ne 's/^Hadoop \(.*\)/\1/p')
    fi

    local m='^([0-9]*)\.([0-9]*)\.([0-9]*)-?(.*)$'
    if [[ $HADOOP_VERSION =~ $m ]]; then
      export HADOOP_VERSION_MAJOR=${BASH_REMATCH[1]}
      export HADOOP_VERSION_MINOR=${BASH_REMATCH[2]}
      export HADOOP_VERSION_MAINTENANCE=${BASH_REMATCH[3]}
      export HADOOP_VERSION_SUFFIX=${BASH_REMATCH[4]}
    fi
  fi
}

setup() {
  init_envs
}
