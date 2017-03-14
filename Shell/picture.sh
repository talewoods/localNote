#!/bin/bash

if [ $# -ne 3 ];
then
    echo "Usage:$0 URL -d DIRECTORY"
    exit -1
fi

for i in {1..4}
do
  case $1 in
  -d) shift; directory=$1;shift;;
   *) url=${url:-$1};shift;;
  esac
done

mkdir -p $directory;
baseurl=$(echo $url |egrep -o "https?://[a-z.]+")

echo Downloading $url
curl -s $url |egrep -o "img\":\"[^\"]*" |
sed 's/img\":\"\([^\"]*\)/\1/g' >/tmp/$$.list

echo "ok1"
cat /tmp/$$.list


sed -i "s|^/|$baseurl/|" /tmp/$$.list

echo "ok2"
cat /tmp/$$.list


cd $directory;
while read filename;
do
   echo Downloading $filename
   curl -s -O "$filename" --silent
done </tmp/$$.list
