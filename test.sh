#!/bin/bash
pass1=$(cat /dev/urandom | tr -dc 'a-z' | fold -w 5 | head -n 1)
pass2=$(cat /dev/urandom | tr -dc 'A-Z' | fold -w 5 | head -n 1)
pass3=$(cat /dev/urandom | tr -dc '0-9' | fold -w 5 | head -n 1)
password=$(echo "$pass1$pass2$pass3!")
echo $password
