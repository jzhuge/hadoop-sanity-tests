@test "create home dir" {
  sudo -u hdfs hdfs dfs -mkdir -p /user/$USER
  sudo -u hdfs hdfs dfs -chown $USER /user/$USER
}
