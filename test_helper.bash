setup() {
  : ${TEST_HOST:=localhost}
  : ${TEST_KMS_PORT:=9600}
  : ${TEST_HTTPFS_PORT:=14000}

  : ${HADOOP_HOME:=~/hadoop/hadoop-dist/target/hadoop-3.0.0-alpha2-SNAPSHOT}
  : ${HADOOP_CONF_DIR:=$HADOOP_HOME/etc/hadoop}

  PATH=$HADOOP_HOME/sbin:$HADOOP_HOME/bin:$PATH

  local g1=$(grep -A1 hadoop.httpfs.ssl.enabled $HADOOP_CONF_DIR/httpfs-site.xml)
  if [[ -n $g1 ]]; then
    grep -q true <<<$g1 && HTTPFS_SSL_ENABLED=true
  elif [[ -f $HADOOP_CONF_DIR/httpfs-env.sh ]]; then
    # This sets HTTPFS_SSL_ENABLED
    . $HADOOP_CONF_DIR/httpfs-env.sh
  fi
}
