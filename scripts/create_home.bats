load test_helper

@test "create home dir" {
  hdfs dfs -mkdir -p /user/$USER
  hdfs dfs -chown $USER /user/$USER
}
