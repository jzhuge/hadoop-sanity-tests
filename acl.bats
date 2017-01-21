load test_helper

acl_test_file=/tmp/acl_test

@test "hdfs setfacl" {
  hdfs dfs -rm -f -skipTrash $acl_test_file
  dd if=/dev/zero bs=20k count=1 | hdfs dfs -put - $acl_test_file
  hdfs dfs -setfacl -m user:foo:rwx $acl_test_file
}

@test "hdfs getfacl" {
  hdfs dfs -getfacl $acl_test_file
}
