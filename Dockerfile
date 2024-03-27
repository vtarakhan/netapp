FROM ubuntu:16.04
#COPY jdk-8u202-linux-x64.tar.gz /usr/local/
COPY jdk-7u80-linux-x64.tar.gz /usr/local/
COPY netapp-oncommand-sysmgr_2.2.0-2182_all.deb /usr/local/
RUN apt update && apt upgrade -y && apt install -y libx11-6 libxtst6 libxrender1 libxi6 flashplugin-installer \
    libxext6 desktop-file-utils chromium-browser && \
    tar -xvzf /usr/local/jdk-7u80-linux-x64.tar.gz -C /usr/local/ && \
    update-alternatives --install /usr/bin/java java /usr/local/jdk1.7.0_80/bin/java 1 && \
    update-alternatives --set java /usr/local/jdk1.7.0_80/bin/java && \
    update-alternatives --install /usr/bin/javaws javaws /usr/local/jdk1.7.0_80/bin/javaws 1 && \
    dpkg -i /usr/local/netapp-oncommand-sysmgr_2.2.0-2182_all.deb && \
    #rm -rf /usr/local/jdk1.7.0_80 && update-alternatives --remove-all java && \
    #tar -xvzf /usr/local/jdk-8u202-linux-x64.tar.gz -C /usr/local/ && \
    #update-alternatives --install /usr/bin/java java /usr/local/jdk1.8.0_202/bin/java 1 && \
    #update-alternatives --set java /usr/local/jdk1.8.0_202/bin/java && \
    #update-alternatives --install /usr/bin/javaws javaws /usr/local/jdk1.8.0_202/bin/javaws 1 && \
    useradd -m -s /bin/bash www && \
    apt autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* && rm -rf /var/cache/apk/*
USER www
RUN mkdir -p /home/www/NetApp/SystemManager/ && \
    echo "<configuration-data><user-preference><browser>chromium-browser</browser><log-level>INFO</log-level></user-preference></configuration-data>" > /home/www/NetApp/SystemManager/SystemManager.config
WORKDIR /opt/NetApp/oncommand_system_manager/
