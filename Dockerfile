FROM huzhenghui/sdkman

LABEL maintainer="hu@daonao.com"

LABEL trigger_comment="First"

RUN bash -c 'source /root/.sdkman/bin/sdkman-init.sh; sdk version; echo -e "\n----------" $? "----------\n"' && \
    bash -c 'source /root/.sdkman/bin/sdkman-init.sh; sdk install scala 2.12.4; echo -e "\n----------" $? "----------\n"' && \
    bash -c 'source /root/.sdkman/bin/sdkman-init.sh; export'
