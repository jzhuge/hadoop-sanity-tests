load test_helper

@test "distcp" {
  hdfs dfs -rm -f -r -skipTrash /tmp/100M
  dd if=/dev/urandom bs=1M count=100 | hdfs dfs -put - /tmp/100M
  hadoop distcp /tmp/100M /tmp/100M.cp
}
