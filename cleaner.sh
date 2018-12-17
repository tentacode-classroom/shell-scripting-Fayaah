#!/bin/bash 
CURRENT_DIRECTORY=`dirname $0`
BAZAR_DIRECTORY=$CURRENT_DIRECTORY/../Bazar
CLEAN_DIRECTORY=$CURRENT_DIRECTORY/../Bazar_Clean 

mkdir Bazar_Clean Bazar_Clean/Divers Bazar_Clean/Images Bazar_Clean/Videos
FILES=find Bazar -type f 

for FILE in $FILES 
do 
	if [[ `cat $FILE | grep .jpg` ]]
	then 
		mv $FILE $CLEAN_DIRECTORY/Images
	elif [[ `cat $FILE | grep .mp4` ]]
	then 
		mv $FILE $CLEAN_DIRECTORY/Videos
	else 
		mv $FILE $CLEAN_DIRECTORY/Divers 	
	fi
done


#find $directory_name -name \*.jpg

