#!/bin/bash

usage_exit() {
        echo "Usage: $0 [-f file]" 1>&2
        exit 1
}

while getopts :f:h OPT;
do
  case $OPT in
    f) tail -F "${OPTARG}"
      ;;
    h) usage_exit
      ;;
    *) usage_exit
      ;;
  esac
done



