#!/bin/bash

apikey=2a31df31-01e6-4690-958e-9e066f4c7b07;

if [ $# -ne 2 ];
then 
   echo -e "Usage :$0 word Number"
   exit -1;
fi

curl --silent  \
http://www.dictionaryapi.com/api/v1/references/collegiate/xml/$1?key=$apikey | \
grep -o \<dt\>.*\</dt\> |\
sed 's$</*[a-z]*>$$g' | \
head -n $2 | cat -n 


