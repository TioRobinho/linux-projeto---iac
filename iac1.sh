#!/bin/bash

echo "Criando diretórios..."

mkdir /publicos
mkdir /admi
mkdir /vend
mkdir /secr

echo "Criando grupos de usuários..."

groupadd GRP_ADMI
groupadd GRP_VEND
groupadd GRP_SECR

echo "Criando usuários..."

useradd robson -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADMI
useradd adriana -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADMI
useradd chiara -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADMI

useradd joni -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEND
useradd mariana -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEND
useradd fabiana -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEND

useradd juliana -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SECR
useradd carlo -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SECR
useradd ines -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SECR

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADMI /admi
chown root:GRP_VEND /vend
chown root:GRP_SECR /secr

chmod 770 /admi
chmod 770 /vend
chmod 770 /secr
chmod 777 /publicos

echo "Fim...."




