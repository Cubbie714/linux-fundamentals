#!/bin/bash
clear
# -------------------------------------
#      FUNCTION PRACTICE
# ------------------------------------
print_result()
{
echo ""
echo "-----------------------------------------" >> ~/Desktop/executable.txt
echo "         $1                               " >> ~/Desktop/executable.txt
echo "-----------------------------------------"  >> ~/Desktop/executable.txt
printf "`$2`\n"  >> ~/Desktop/executable.txt
}
Heading="DNS Informtion"
Command="nslookup www.amazon.com"
print_result "$Heading" "$Command"


Heading="Active Processes"
Command ="ps -ef"
print_result "$Heading" "$Command"
echo "------------------------------"


cat ~/Desktop/executable.txt

