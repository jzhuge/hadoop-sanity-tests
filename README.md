# Hadoop Setup Scripts

## Start the insecure pseudo-distributed Hadoop

    ./pseudo_dist start config/insecure

## Start the SSL-enabled pseudo-distributed Hadoop

    ./pseudo_dist start config/ssl

## Start the secure pseudo-distributed Hadoop with SSL and Kerberos

    ./create_keytabs KDC_HOST FQ_HOSTNAME REALM

    kinit -t ~/.config/kerberos/hdfs.keytab hdfs/localhost@GCE.CLOUDERA.COM
    ./pseudo_dist restart config/secure

    kinit -t ~/.config/kerberos/$USER.keytab

## Stop the pseudo-distributed Hadoop

    pseudo_dist kill|stop

## Environment variables

Name             | Description
-----------------|-------------
HADOOP_HOME      | Hadoop home directory
HADOOP_CONF_DIR  | Hadoop config directory
TEST_SERVICES    | Space delimited list of Hadoop services: hdfs, distcp, httpfs, and kms
