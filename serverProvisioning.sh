#!/bin/bash

echo "Atualizando o sistema"

apt-get update
apt-get upgrade -y

echo "Instalando Apache"

apt install apache2 -y

echo "Instalando unzip"

apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicacao"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Operacao finalizada!"
