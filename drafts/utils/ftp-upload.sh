#!/bin/bash

ftp_site="ftp.pestarini.com.ar"
username="u236565884"
passwd="29ttndd.NOB"
site_dir="output/"
path="public_html/agrimensor/"

# bash select
#select path in "public_html/agrimensor/"
for file in $(ls $site_dir)
do
ftp -in <<EOF
open $ftp_site
user $username $passwd
cd $path
put $site_dir$file $file
close 
bye
EOF
echo $file uploaded to $path! 

# Break, otherwise endless loop
#break
done

