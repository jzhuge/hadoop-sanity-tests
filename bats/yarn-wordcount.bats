load test_helper

@test "wordcount" {
  local cnt=200
  local file=/tmp/$cnt-words
  hdfs dfs -rm -f -r -skipTrash $file
  head -200 /usr/share/dict/words | hdfs dfs -put - $file
  hadoop jar $(find $HADOOP_HOME/share/ -path '**/mapreduce/hadoop-mapreduce-examples*.jar') wordcount $file $file-wc
}
