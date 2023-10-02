#!/usr/bin/env bash
cat websites.csv | while IFS=, read -r col1 domain col3
do
  domain=$(echo $domain | sed "s/\"//g")
  dig $domain HTTPS +short | grep "ech" > /dev/null
  echo "$domain $?"
done
