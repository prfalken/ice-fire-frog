#!/bin/bash

function usage() {
    echo "Usage : translate.sh Original_VF_EPUB_file Output_File"
    exit 1
}

if [ $# -ne 2 ] ; then
    usage
fi

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# This should be the original Game of Thrones epub file, French Version
INPUT_FILE=$1

# Output
OUTPUT_FILE=$2


# todo : find ebook-convert wherever it is, make it multiplatform
/Applications/calibre.app/Contents/MacOS/ebook-convert "$1" "$2" --search-replace $BASE_DIR/dictionary


