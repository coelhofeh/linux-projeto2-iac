#!/bin/bash

echo "Atualizando os pacotes..."


apt list --upgradable


apt upudate


apt upgrade -y

echo "Concluído!"
