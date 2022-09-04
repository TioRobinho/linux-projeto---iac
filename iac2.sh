#!/bin/bash

echo "Criando diretórios..."

mkdir /public
mkdir /adi
mkdir /vnd
mkdir /scr

echo "Criando grupos de usuários..."

groupadd GRP_ADI
groupadd GRP_VND
groupadd GRP_SCR

echo "Criando usuários..."

useradd ana -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADI
useradd joana -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADI
useradd rose -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADI

useradd jose -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VND
useradd marta -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VND
useradd fabio -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VND

useradd julio -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SCR
useradd cesar -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SCR
useradd clara -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SCR

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADI /adi
chown root:GRP_VND /vnd
chown root:GRP_SCR /scr

chmod 770 /adi
chmod 770 /vnd
chmod 770 /scr
chmod 777 /public

echo "Fim...."




