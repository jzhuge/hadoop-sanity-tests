# Hadoop Regression Tests

## Setup

* Install [Bats: Bash Automated Testing System](https://github.com/sstephenson/bats)

## Start Hadoop in pseudo-distributed mode

    pseudo_dist start unsecure|ssl

## Stop Hadoop in pseudo-distributed mode

    pseudo_dist kill|stop

## Run all tests

    bats scripts

## Run KMS tests

    bats scripts/kms.bats

## Run HttpFS tests

    bats scripts/httpfs.bats

## Environment variables

Name        | Description
------------|-------------
HADOOP_HOME | Hadoop home directory
