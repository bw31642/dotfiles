#!/bin/bash

export DOTFILES_DIR="${HOME}/.dotfiles"

if [ -z "${DOTFILES_DIR}" ]; then
    echo "DOTFILE_DIR not set, bailing out!"
    exit 1;
fi

FILE_LIST="${DOTFILES_DIR}/file-list.txt"

if [ ! -f "${FILE_LIST}" ]; then
    echo "no file list found!"
    exit 1;
fi
echo "copying files FROM home dir to current directory..."
for f in `cat ${FILE_LIST}`
do
    echo "...${f}"
    cp -r ${HOME}/$f ${DOTFILES_DIR}/
done
echo "Done."
