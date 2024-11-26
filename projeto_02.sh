#!/bin/bash

#Arquivo do Projeto 02! 
#Direcionando o arquivo extraído do github para rodar a aplicação.

#Pesquisando o pacote
apt search apache

#Instalando o Apache
apt install apache2

#Extrair o arquivo .zip:
echo "Extraindo Arquivo..."

wget https://github.com/AngeloAntunes/02-Projeto/archive/refs/heads/main.zip

echo "Arquivo Extraido!"

#Movendo arquivo para o diretório tmp, como solicitado!
mv ./main.zip ./tmp

#Entrando no diretório tmp
cd /tmp

#Extrair o zip
apt install unzip
unzip main.zip

#Entrando no diretório da extração do arquivo
cd /tmp/02-Projeto-main

#Instalando o unrar para abrir o arquivo
apt install unrar
unrar linux-site-main.rar

#Abrindo o diretório da extração
cd linux-site-main

#Copiando o conteúdo para o diretório html
cp ./* /var/www/html -r

#Removendo o arquivo que já estava sendo utilizado como aplicação!
rm -rf index.html
