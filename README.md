# Hadoop Bash Automated Tests

## Install Bats

[Bats: Bash Automated Testing System](https://github.com/sstephenson/bats)

## Run all tests

    bats .

## Run all tests in SSL mode

    TEST_SSL_ENABLED=yes bats .

## Environment variables

Name                 | Description
---------------------|-------------
TEST_HOST            | The host where Hadoop is running, default localhost
TEST_HTTPFS_PORT     | HttpFS port, default 14000
TEST_KMS_PORT        | KMS port, default 9600
TEST_SSL_ENABLED     | Whether SSL is enabled, yes or no, default is no
