#!/bin/bash

TOOLKITS=("wd" "tman")

function toolkit_install()
{
    echo "install toolkits"
}

function toolkit_uninstall()
{
    echo "uninstall toolkits"
}


if [ "$1" = "install" ]; then
    echo "install"
elif [ "$1" = "uninstall" ]; then
    echo "uninstall"
else
    echo "err: no such command '$1'"
fi
