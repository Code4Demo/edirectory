FROM edirectory:9.2.0
USER root
RUN groupadd -g 1000 default && useradd -u 1000 -m -g default default && echo -e "\ndefault ALL=(root) NOPASSWD: /opt/novell/eDirectory/bin/ndspreconfig-docker" >> /etc/sudoers