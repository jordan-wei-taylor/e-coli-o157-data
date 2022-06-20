for file in raw-data/STEC_14-18_fsm_kmers.txt.gz raw-data/STEC_19_fsm_kmers.txt.gz
do
    echo -n "merging $file.part* > $file"
    cat $file.part* > $file
    echo -e "\033[2K\rmerged $file.part* > $file"

    echo -n "deleting $file.part* files"
    rm $file.part*
    echo -e "\033[2K\rdeleted $file.part* files"
done
