### Creation du script
``` bash
 sudo nano html.sh
```
puis entrer :
``` bash
#!/bin/bash
jour=$( date +"%d-%m-%y")
heure=$(date +%H:%M:%S)
echo " ">> /home/ubuntu/log_script.txt
echo "           $jour - $heure           ">> /home/ubuntu/log_script.txt
cd /home/ubuntu
git clone https://github.com/jsbubu/TIDAL.git
cd /home/ubuntu/TIDAL

if [ -e html ]
then
        rm -r /var/www/html
        mv /home/ubuntu/TIDAL/html /var/www/
        rm -r /home/ubuntu/TIDAL
        echo "Le dossier html a bien été remplacé " >> /home/ubuntu/log_script.txt
        echo " ">> /home/ubuntu/log_script.txt
else
        echo "Le dossier html n'existe pas" >> /home/ubuntu/rapport_log.txt
        echo " ">> /home/ubuntu/log_script.txt
fi
```
Ce script permet un verrification que le dossier html est bien prensent avant de commencer les modifications.
En cas d'absence de celui ci, la supression de la version actuel n'est pas réalisé un un log est ajouté dans le fichier.

### automatisation du script :
``` bash
 sudo crontab -e
```
puis entrer :
``` bash
00 00 * * * bash /home/ubuntu/html.sh
0 0 1 * * echo " " > /home/ubuntu/log_script.txt
```
permet d'actualiser le site tous les jours a minuit. 
Le fichier de log est lui vidé tous les mois.
