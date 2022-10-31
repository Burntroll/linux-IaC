#!/bin/bash

echo "Creating directories..."

mkdir /publico /adm /ven /sec

echo "Creating groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users..."

useradd -m -c "Carlos Montana" -s /bin/bash carlos -G GRP_ADM -p $(openssl passwd -crypt Senha123)
passwd carlos -e

useradd -m -c "Maria White" -s /bin/bash maria -G GRP_ADM -p $(openssl passwd -crypt Senha123)
passwd maria -e

useradd -m -c "Joao Nogueira" -s /bin/bash joao -G GRP_ADM -p $(openssl passwd -crypt Senha123)
passwd joao -e

useradd -m -c "Debora Carvalho" -s /bin/bash debora -G GRP_VEN -p $(openssl passwd -crypt Senha123)
passwd debora -e

useradd -m -c "Sebastiana Freire" -s /bin/bash sebastiana -G GRP_VEN -p $(openssl passwd -crypt Senha123)
passwd sebastiana -e

useradd -m -c "Roberto Ribeiro" -s /bin/bash roberto -G GRP_VEN -p $(openssl passwd -crypt Senha123)
passwd roberto -e

useradd -m -c "Josefina Carvalho" -s /bin/bash josefina -G GRP_SEC -p $(openssl passwd -crypt Senha123)
passwd josefina -e

useradd -m -c "Amanda Portela" -s /bin/bash amanda -G GRP_SEC -p $(openssl passwd -crypt Senha123)
passwd amanda -e

useradd -m -c "Rogerio Silvestre" -s /bin/bash rogerio -G GRP_SEC -p $(openssl passwd -crypt Senha123)
passwd rogerio -e

echo "Configuring directories..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Tasks completed!"
