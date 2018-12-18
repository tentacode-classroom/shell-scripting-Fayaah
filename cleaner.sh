#!/bin/bash 
CURRENT_DIRECTORY=`dirname $0`
BAZAR_DIRECTORY=$CURRENT_DIRECTORY/Bazar
CLEAN_DIRECTORY=$CURRENT_DIRECTORY/Bazar_Clean 

mkdir Bazar_Clean Bazar_Clean/Divers Bazar_Clean/Images Bazar_Clean/Videos

FILES=`find $BAZAR_DIRECTORY -type f`

for FILE in $FILES 
do 
	if [[ `file $FILE | grep "image data"` ]]
	then 
		echo Envoyé vers image
		YEAR=`stat -c %y $FILE | cut -c 1-4`
		MONTH=`stat -c %y $FILE | cut -c 6-7`
		echo fichier de $MONTH $YEAR
		mkdir -p $CLEAN_DIRECTORY/Images/$YEAR/$MONTH
		cp $FILE $CLEAN_DIRECTORY/Images/$YEAR/$MONTH

	elif [[ `file $FILE | grep "ISO Media"` ]]
	then 
		echo Envoyé vers vidéo
		echo `stat -c %y $FILE`
		cp $FILE $CLEAN_DIRECTORY/Videos
	else 
		echo Envoyé vers divers
		echo `stat -c %y $FILE`
		cp $FILE $CLEAN_DIRECTORY/Divers 	
	fi
done

# find $directory_name -name \*.jpg
# stat -c %y fichier

