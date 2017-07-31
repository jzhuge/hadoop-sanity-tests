# Hadoop Bash Automated Tests

## Install Bats

[Bats: Bash Automated Testing System](https://github.com/sstephenson/bats)

## Run all tests in insecure mode

    bats .

## Run all tests in SSL mode

    TEST_SSL_ENABLED=yes bats .

## Run all tests in secure mode

    TEST_KERBEROS_ENABLED=yes TEST_SSL_ENABLED=yes bats .

## Environment variables

Name                  | Description
----------------------|--------------------------------------------------------
TEST_HOST             | The host where Hadoop is running, default is localhost
TEST_HTTP_SCHEME      | HTTP scheme, default is http or https for SSL
TEST_HTTPFS_HOST      | HttpFS host, default is $TEST_HOST
TEST_HTTPFS_PORT      | HttpFS port, default is 14000
TEST_KERBEROS_ENABLED | Whether Kerberos is enabled, yes or no, default is no
TEST_KMS_HOST         | KMS host, default is $TEST_HOST
TEST_KMS_PORT         | KMS port, default is 9600
TEST_NN_HOST          | NameNode host, default is $TEST_HOST
TEST_NN_WEB_PORT      | NameNode web port, default is 9870 or 9871 for SSL
TEST_SSL_ENABLED      | Whether SSL is enabled, yes or no, default is no
TEST_WEBHDFS_SCHEME   | WebHDFS scheme, default is webhdfs or swebhdfs for SSL

