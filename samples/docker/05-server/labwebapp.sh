#!/bin/bash

if [ ! -f ./webapp.jar ]; then
   curl https://ntw-shared-data.s3.ap-south-1.amazonaws.com/samples/webapp/webapp.jar -o webapp.jar
fi

