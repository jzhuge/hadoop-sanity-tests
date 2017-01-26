# Hadoop Setup Scripts

## Start Hadoop in pseudo-distributed mode

    pseudo_dist start [config/insecure|config/ssl]

## Stop Hadoop in pseudo-distributed mode

    pseudo_dist kill|stop

## Environment variables

Name             | Description
-----------------|-------------
HADOOP_HOME      | Hadoop home directory
HADOOP_CONF_DIR  | Hadoop config directory
TEST_SERVICES    | Space delimited list of Hadoop services: hdfs, distcp, httpfs, and kms

## TODO

* Add 'secure' configuration enabled with both SSL and Kerberos
