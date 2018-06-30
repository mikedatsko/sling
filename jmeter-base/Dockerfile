FROM java:8

ARG JMETER_VERSION="4.0"

RUN mkdir /jmeter \
    && cd /jmeter/ \
    && wget https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-${JMETER_VERSION}.tgz \
    && tar -xvzf apache-jmeter-${JMETER_VERSION}.tgz \
    && rm apache-jmeter-${JMETER_VERSION}.tgz

ENV JMETER_HOME /jmeter/apache-jmeter-${JMETER_VERSION}/

# Add Jmeter to the Path
ENV PATH $JMETER_HOME/bin:$PATH
