load test_helper

@test "distcp" {
  hdfs dfs -rm -f -r -skipTrash /tmp/hosts
  hdfs dfs -put /etc/hosts /tmp/hosts
  hadoop distcp /tmp/hosts /tmp/hosts.cp
}
