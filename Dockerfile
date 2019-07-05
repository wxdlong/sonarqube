FROM sonarqube:6.7.7-community
LABEL maintainer="wxdlong@qq.com"

RUN wget -q https://github.com/checkstyle/sonar-checkstyle/releases/download/4.21/checkstyle-sonar-plugin-4.21.jar -O /opt/sonarqube/extensions/plugins/checkstyle-sonar-plugin-4.21.jar && \
    wget -q https://github.com/jensgerdes/sonar-pmd/releases/download/3.2.1/sonar-pmd-plugin-3.2.1.jar  -O /opt/sonarqube/extensions/plugins/sonar-pmd-plugin-3.2.1.jar && \
    wget -q https://binaries.sonarsource.com/Distribution/sonar-java-plugin/sonar-java-plugin-5.13.1.18282.jar  -O /opt/sonarqube/extensions/plugins/sonar-java-plugin-5.13.1.18282.jar && \
    wget -q https://github.com/spotbugs/sonar-findbugs/releases/download/3.9.4/sonar-findbugs-plugin-3.9.4.jar   -O /opt/sonarqube/extensions/plugins/sonar-findbugs-plugin-3.9.4.jar && \
    wget -q https://repo1.maven.org/maven2/org/sonarsource/scm/git/sonar-scm-git-plugin/1.8.0.1574/sonar-scm-git-plugin-1.8.0.1574.jar -O /opt/sonarqube/extensions/plugins/sonar-scm-git-plugin-1.8.0.1574.jar
RUN cp -rf /home/resources/plugin/* /opt/sonarqube/extensions/plugins/
