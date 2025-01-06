#!/bin/bash

if [[ $(poetry env list | wc -l) = 0 ]]; then
    poetry install
fi

if poetry run python3 -c 'import numpy'; then
    echo
    echo "poetry run python3 -c 'import numpy'  [ OK ]"
else
    echo
    echo "poetry run python3 -c 'import numpy'  [ Failed ]"
fi
