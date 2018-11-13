#!/bin/bash 
## Rapport de configuration matérielle par Jaufré Aligé

(
echo -e "\n
                                  CONFIGURATION DE L'APPAREIL \r
\n" | tee matos.txt

echo -e "\n
\---------------------------\r
Aperçu générale des pièces \r
\---------------------------\r
\n" | tee -a matos.txt

sudo lshw | tee -a matos.txt
echo -e "\r
\n
\---------------------\r
Connexions USB\r
\---------------------\r
\n" | tee -a matos.txt
sudo lsusb | tee -a matos.txt

echo -e "\r
\n
\---------------------------\r
Cartes et Pilotes associés\r
\---------------------------\r
\n" | tee -a matos.txt
sudo lspci -k | tee -a matos.txt

echo -e "\r
\n
\---------------------\r
Version d'Ubuntu\r
\---------------------\r
\n" | tee -a matos.txt
lsb_release -a | tee -a matos.txt

echo -e "\r
\n
\---------------------\r
Noyau Linux Utilisé\r
\---------------------\r
\n" | tee -a matos.txt
uname -a | tee -a matos.txt
echo -e "\n" | tee -a matos.txt

) > /dev/null 2>&1

echo -e "\n
Configuration écrite dans matos.txt\r
\n
          À Plouch' !\r
\n"
