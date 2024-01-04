#!/bin/bash

# Calculer le nombre de secondes jusqu'à l'heure désirée
heure_desiree="09:40:06"  # Remplacez par l'heure souhaitée au format HH:MM
heure_desiree="$1"  # Remplacez par l'heure souhaitée au format HH:MM
heure_actuelle=$(date +%H:%M:%S)
heure_actuelle_secondes=$(date -d $heure_actuelle +%s)
heure_desiree_secondes=$(date -d $heure_desiree +%s)
diff_secondes=$((heure_desiree_secondes - heure_actuelle_secondes))

# Vérifier si l'heure désirée est déjà passée aujourd'hui
if [ $diff_secondes -le 0 ]; then
    echo "L'heure désirée est déjà passée."
    exit 1
fi

# Attendre jusqu'à l'heure désirée
sleep $diff_secondes

~/./sesamm/git.sesamm-internal.com/y.ilas/sysadmin/linux/move_mouse.sh 20

