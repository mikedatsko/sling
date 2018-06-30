FROM java:8

RUN mkdir /jmeter \
    && cd /jmeter/ \
    && wget https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-4.0.tgz \
    && tar -xvzf apache-jmeter-4.0.tgz \
    && rm apache-jmeter-4.0.tgz

ENV JMETER_HOME /jmeter/apache-jmeter-4.0/

# Add Jmeter to the Path
ENV PATH $JMETER_HOME/bin:$PATH
