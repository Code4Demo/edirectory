#!/bin/bash

## Docker info refer https://www.netiq.com/documentation/edirectory-92/edir_install/data/t49z607vi0co.html
## ndsconfig info refer https://www.netiq.com/documentation/edirectory-92/edir_install/data/a79kg0w.html#bxm6fn9

#<def/new> [-t <treename>] [-n <server context>] [-a <admin FDN>] [-w <password>]
#                [-B ip_address1|interface1@port1,ip_address2|interface2@port2....] [-b port to bind]
#                [-i] [-S <server name>] [-D <instance path>] [-d <path for dib>] [-m <module>]
#                [-e] [-R|-r] [-c] [-L <ldap port>] [-l <SSL port>] [-P <LDAP URLs>] [-o http port] [-O https port]
#                [--pki-default-rsa-keysize <2048/4096/8192>]  [--pki-default-ec-curve <P256/P384/P521>]
#                [--pki-default-cert-life <number of years>] [--enable-pbkdf2]
#                [--config-file <absolute path for configuration file>] [--configure-eba-now <yes/no>]


PROJECT_NAME=eDirectory


sudo rm -rf $HOME/$PROJECT_NAME

mkdir -p $HOME/$PROJECT_NAME

sudo chmod 777 -R $HOME/$PROJECT_NAME


## Try to create the data
sudo docker rm -f  $PROJECT_NAME
sudo docker run -d \
--name $PROJECT_NAME \
-p 1389:389 \
-p 1636:636 \
-p 1524:1524 \
-p 8028:8028 \
-p 8030:8030 \
--volume $HOME/$PROJECT_NAME:/config:rw \
--stop-timeout 180 \
--restart on-failure:5 \
--memory="800M" \
--cpuset-cpus="1" \
--pids-limit="300" \
code4demo/edirectory \
new -t tree \
-n demo \
-S ldap \
-B @1524 \
-o 8028 \
-O 8030 \
-L 389 \
-l 636 \
-a admin.org \
-w test \
--configure-eba-now yes


 