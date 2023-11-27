FROM atlassian/confluence-server:7.19.16

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y ttf-mscorefonts-installer && \
    fc-cache -f -v

ENV JVM_SUPPORT_RECOMMENDED_ARGS "-Dcofluence.document.conversion.fontpath=/usr/share/fonts/truetype/msttcorefonts ${CATALINA_OPTS}"
