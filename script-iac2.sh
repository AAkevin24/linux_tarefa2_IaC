#!/bin/bash

echo 'Atualizando o servidor Ubuntu'

apt update
apt upgrade
apt dist-upgrade

echo 'Instalando o apache2'

apt install apache2

echo 'Instalando o unzip'

apt install unzip

echo 'Instalando a aplicação do diretório /tmp e descompactando'

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo 'Copiando os arquivos da aplicação para o apache'

cd linux-site-dio-main
cp -R * /var/www/html/


