if [ -z "$PIG_HOME" ]; then
    echo "PIG_HOME is not set"
    exit 1
fi

export HADOOP_CONF=$HADOOP_HOME/conf
export HADOOP_BIN=$HADOOP_HOME/bin

# populate test data. this only has to be done for the first time.
ant -f $PIG_HOME/build.xml -Dharness.old.pig=$PIG_HOME -Dharness.cluster.conf=$HADOOP_CONF -Dharness.cluster.bin=$HADOOP_BIN test-e2e-deploy

# run e2e test. to run specific test cases, use -Dtests.to.run="-t <test cases>".
# please also see https://cwiki.apache.org/confluence/display/PIG/HowToTest
ant -f $PIG_HOME/build.xml -Dharness.old.pig=$PIG_HOME -Dharness.hadoop.home=$HADOOP_HOME -Dharness.cluster.conf=$HADOOP_CONF -Dharness.cluster.bin=$HADOOP_BIN test-e2e-tez -Dfork.factor.group=4 -Dfork.factor.conf.file=1 -Dhadoopversion=23
