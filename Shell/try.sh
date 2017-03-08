#!/bin/bash

if [ $# -ne 1 ];
then
    echo "Usage ；$0 filename";
    exit -1;
fi

filename=$1;

egrep -o  "\w"  $filename |\
     awk '{count[$0]++;} 
         END{
               for (i in count)
               {
                      printf("%-14s: %d\n",i,count[i]);
               }
            }'
