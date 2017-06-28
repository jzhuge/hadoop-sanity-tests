# Hadoop Setup Scripts

## Preparation

### Build the Hadoop source tree

    mvn install -Pdist -Dtar -DskipTests -DskipShade -Dmaven.javadoc.skip

### Add _hadoop-sanity-tests/bin_ directory to your PATH

## Run Hadoop sanity tests

Inside a Hadoop source or binary directory, run:

    hadoop-sanity-tests

Use TEST_MODES and TEST_SERVICES to control which tests to run.

## Run Hadoop in pseudo-distributed mode

### Start Hadoop with insecure configuration

    pseudo_dist start config/insecure

### Start Hadoop with SSL configuration

    pseudo_dist start config/ssl

### Start Hadoop with SSL and Kerberos configuration

    create_keytabs <kdc_host> <fq_hostname> <kerberos_realm>

    kdestroy ; kinit -t ~/.config/kerberos/hdfs.keytab hdfs/localhost@<kerberos_realm>
    ./pseudo_dist start config/secure
    kdestroy ; kinit -t ~/.config/kerberos/$USER.keytab

### Stop Hadoop

    pseudo_dist kill|stop

## Environment variables

Name             | Description
-----------------|-------------
HADOOP_HOME      | Hadoop home directory
HADOOP_CONF_DIR  | Hadoop config directory
TEST_MODES       | Space delimited list of test modes: insecure, ssl, and secure
TEST_SERVICES    | Space delimited list of Hadoop services: hdfs, yarn, balancer, httpfs, and kms
