#!/usr/bin/env bash
set -eu

if [[ $(command -v pip3) ]]; then

    pip3 install --quiet --upgrade pip
    pip3 install --quiet --user --upgrade \
        ipython \
        ipython-autoimport \
        jinja2 \
        lxml \
        pipx \
        pyyaml \
        requests \
        tomli

fi