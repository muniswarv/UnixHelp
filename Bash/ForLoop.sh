!/bin/bash

echo "----  For Loop with custome List"
for i in 1 2 3 4 5
do
   echo "Welcome $i times"
done


echo "----  For Loop with range operator - Type1"

for i in {1..5}
do
   echo "Welcome $i times"
done


echo "----  For Loop with range operator - Type2"
echo "Bash version ${BASH_VERSION}..."

for i in {0..10..2}
  do
     echo "Welcome $i times"
done


echo "----  For Loop C - Style "
for (( c=1; c<=5; c++ ))
do
   echo "Welcome $c times"
done

echo "----  Reading from Command return "
cat ~/Training/Bash/employees.txt

IFV="\n"
for line in `cat ~/Training/Bash/employees.txt`
  do
     echo "$line"
done

