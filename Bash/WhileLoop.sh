#!/bin/bash
IFS=:
echo "Employee Names:"
echo "---------------"
while read name empid dept
do
    echo "$name is part of $dept department"
done < ~/Training/Bash/employees.txt
