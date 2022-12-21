#!/bin/bash

set -e

if [ "$#" -gt 0 ] && [[ $1 == *.java ]]
then
   javac $1
   classname=$(echo $1 | sed 's/\.java//')
   /usr/bin/java $classname
else
    exec "$@"
fi

