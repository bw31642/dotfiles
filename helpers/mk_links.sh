#!/bin/bash

if [ -z "${DOTFILES_DIR}" ]; then
    echo "DOTFILE_DIR not set, bailing out!"
    exit 1;
fi

FILE_LIST="${DOTFILES_DIR}/file-list.txt"

if [ ! -f "${FILE_LIST}" ]; then
    echo "no file list found!"
    exit 1;
fi

echo "making links..."
for f in `cat ${FILE_LIST}`
do
    echo "...${f}"
    echo -rf ${HOME}/`basename ${f}`
    rm -rf ${HOME}/`basename ${f}`
    ln -s ${DOTFILES_DIR}/`basename ${f}` ${HOME}/`basename ${f}`
done
echo "Done."
