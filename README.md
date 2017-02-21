# Hadoop Setup Scripts

## Preparation

### Build the Hadoop source tree

    mvn install package -Pdist -Dtar -DskipTests -DskipShade -Dmaven.javadoc.skip

### Set the environment variable HADOOP_HOME

    export HADOOP_HOME=~/<hadoop_dir>/hadoop-dist/target/hadoop-<hadoop_version>

## Run Hadoop in pseudo-distributed mode

### Start Hadoop with insecure configuration

    ./pseudo_dist start config/insecure

### Start Hadoop with SSL configuration

    ./pseudo_dist start config/ssl

### Start Hadoop with SSL and Kerberos configuration

    ./create_keytabs <kdc_host> <fq_hostname> <kerberos_realm>

    kdestroy ; kinit -t ~/.config/kerberos/hdfs.keytab hdfs/localhost@<kerberos_realm>
    ./pseudo_dist start config/secure
    kdestroy ; kinit -t ~/.config/kerberos/$USER.keytab

TODO: yarn fails to start.

### Stop Hadoop

    ./pseudo_dist kill|stop

## Environment variables

Name             | Description
-----------------|-------------
HADOOP_HOME      | Hadoop home directory
HADOOP_CONF_DIR  | Hadoop config directory
TEST_SERVICES    | Space delimited list of Hadoop services: hdfs, distcp, httpfs, and kms
