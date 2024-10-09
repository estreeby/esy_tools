for fichier in *
do
    extension="${fichier##*master}"
    prefixe="${fichier%master*}"
    #echo $fichier
    #echo $prefixe
    #echo $extension
    fichier_nouveau="${prefixe}9.13.0${extension}"
    echo "mv" "${fichier}" "${fichier_nouveau}"
    echo
    mv "${fichier}" "${fichier_nouveau}"
done