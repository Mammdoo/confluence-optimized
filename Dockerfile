FROM atlassian/confluence-server:7.19.16

RUN apt update && \
    # echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | debconf-set-selections && \
    #apt install -y ttf-mscorefonts-installer && \
    apt install -y fonts-wqy-* && \
    fc-cache -f -v

# ENV JVM_SUPPORT_RECOMMENDED_ARGS "-Dcofluence.document.conversion.fontpath=/usr/share/fonts/truetype/msttcorefonts ${CATALINA_OPTS}"
