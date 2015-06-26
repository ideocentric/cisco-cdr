#!/bin/bash

d=`date --date="yesterday" +"%Y-%m-%d"`

cd /opt/ftpusers/processed

if [ -d $d ]; then
  echo `date` " Processing directory: $d..."
  tar --remove-files -c -v -z -f $d.tar.gz $d/

  echo `date` " Deleting logs older than 7 days old"
  find . -name "*.tar.gz" -mtime +7 -print -exec rm {} \;
else
  echo `date` " Directory: $d not found!"
fi



