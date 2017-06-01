load test_helper

@test "hdfs mkdir" {
  hdfs dfs -mkdir -p /tmp
}

@test "hdfs chmod" {
  hdfs dfs -chmod 1777 /tmp
}

@test "hdfs ls" {
  hdfs dfs -ls /
}

@test "hdfs rm -r -skipTrash" {
  hdfs dfs -rm -f -r -skipTrash /tmp/hosts
}

@test "hdfs put" {
  hdfs dfs -put /etc/hosts /tmp
}

@test "hdfs cat" {
  hdfs dfs -cat /tmp/hosts
}

@test "hdfs rm -skipTrash" {
  hdfs dfs -rm -skipTrash /tmp/hosts
}
