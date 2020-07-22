#!/bin/bash
chars1="qwertyuiopasdfghjklzxcvbnm"
chars2="QWERTYUIOPASDFGHJKLZXCVBNM"
chars3="1234567890"
chars4="!@#*"
for i in {1..4} ; do
    pass1=$(echo -n "$pass1${chars1:RANDOM%${#chars1}:1}")
    pass2=$(echo -n "$pass2${chars2:RANDOM%${#chars2}:1}")
    pass3=$(echo -n "$pass3${chars3:RANDOM%${#chars3}:1}")
    pass4=$(echo -n "$pass4${chars4:RANDOM%${#chars4}:1}")
done
password=$(echo "$pass1$pass2$pass3$pass4")
echo $password
