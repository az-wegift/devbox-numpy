#!/bin/bash

if [[ ! -d venv ]]; then
    python3 -m venv venv
fi

source ./venv/bin/activate

if ! pip show numpy &>/dev/null; then
    pip install numpy
fi

if python3 -c 'import numpy'; then
    echo
    echo "python3 -c 'import numpy'  [ OK ]"
else
    echo
    echo "python3 -c 'import numpy'  [ Failed ]"
fi
