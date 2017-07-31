test_servlet() {
  servlet=$1
  scheme=$2
  host=$3
  port=$4
  [[ $TEST_KERBEROS_ENABLED != yes ]] && user_param="user.name=$USER"
  curl -f -k --negotiate -u: -sS "$scheme://$host:$port/$servlet?$user_param"
}
