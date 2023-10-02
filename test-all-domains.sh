#!/usr/bin/env bash
cat websites | while IFS=, read -r domain
do
  domain=$(echo $domain | sed "s/\"//g")
  dig $domain HTTPS +short | grep "ech" > /dev/null
  echo "$domain $?"
done
