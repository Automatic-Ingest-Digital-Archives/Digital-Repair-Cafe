#!/bin/bash

create_folder () {
    echo "creating folder..."
    file=$1
    filename=$(basename $file)
    echo $filename
    mkdir "${file%.*}"
}

read_fat_images () {
    images="$1"
    for file in $images/*.000
    do
        create_folder $file
        filename=${file%.*}
        echo "exporting files of $filename"
        mdir -/ -a -i $file > "$filename"_index.txt
        mcopy -psmi $file ::* "$filename"
    done
}

read_hfs_images () {
    images="$1"
    for file in $images/*.000
    do
        create_folder $file
        hmount $file
        filename=${file%.*}
        echo "exporting files of $filename"
        hls -ialR > "$filename"_index.txt
        hcopy -m :* $filename/
    done
}

while getopts 'f:h:' OPTION; do
  case $OPTION in
    f) 
      arg="$OPTARG"
      read_fat_images $arg
      ;;
    h)
      arg="$OPTARG"
      read_hfs_images $arg
      ;;
    ?) 
      echo "Usage: $(basename $0) [-f] [-h]"
      exit 1
      ;;
    esac
done