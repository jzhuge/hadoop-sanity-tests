test_servlets() {
  scheme=$1
  host=$2
  port=$3
  [[ $TEST_KERBEROS_ENABLED != yes ]] && query_param='?user.name='$USER
  for servlet in conf jmx logLevel logs stacks ; do
    curl -f -k --negotiate -u: -sS "$scheme://$host:$port/$servlet$query_param"
  done
}
